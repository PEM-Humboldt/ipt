/*
 * Copyright 2021 Global Biodiversity Information Facility (GBIF)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.gbif.ipt.model.converter;

import org.gbif.ipt.model.Password;
import org.gbif.ipt.utils.PBEEncrypt;
import org.gbif.ipt.utils.PBEEncrypt.EncryptionException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.thoughtworks.xstream.converters.Converter;
import com.thoughtworks.xstream.converters.MarshallingContext;
import com.thoughtworks.xstream.converters.UnmarshallingContext;
import com.thoughtworks.xstream.io.HierarchicalStreamReader;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;

@Singleton
public class PasswordConverter implements Converter {

  private static final Logger LOG = LogManager.getLogger(PasswordConverter.class);
  private final PBEEncrypt encrypter;

  @Inject
  public PasswordConverter(PBEEncrypt cipher) {
    this.encrypter = cipher;
  }

  @Override
  public boolean canConvert(Class clazz) {
    return clazz.equals(Password.class);
  }

  @Override
  public void marshal(Object value, HierarchicalStreamWriter writer, MarshallingContext context) {
    Password pass = (Password) value;
    try {
      if (pass.password != null) {
        writer.setValue(encrypter.encrypt(pass.password));
      }
    } catch (EncryptionException e) {
      LOG.error("Cannot encrypt sql source password", e);
    }
  }

  @Override
  public Object unmarshal(HierarchicalStreamReader reader, UnmarshallingContext context) {
    Password pass = new Password();
    String val = reader.getValue();
    try {
      pass.password = val == null ? null : encrypter.decrypt(val);
    } catch (EncryptionException e) {
      LOG.error("Cannot decrypt sql source password", e);
    }
    return pass;
  }
}
