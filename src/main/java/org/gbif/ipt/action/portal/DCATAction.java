package org.gbif.ipt.action.portal;


import org.gbif.ipt.config.AppConfig;
import org.gbif.ipt.service.manage.ResourceManager;

import com.google.inject.Inject;
import com.opensymphony.xwork2.ActionSupport;
import org.gbif.ipt.task.GenerateDCAT;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/**
 * Action to create the DCAT feed
 */
public class DCATAction extends ActionSupport {

    private final AppConfig cfg;
    private final ResourceManager resourceManager;

    /**
     * Variable used to print the feed
     */
    private InputStream dcatInfo;

    @Inject
    public DCATAction(AppConfig cfg, ResourceManager resourceManager) {
        this.cfg = cfg;
        this.resourceManager = resourceManager;
    }

    /**
     * Method called when this action is called
     * Creates a GenerateDCAT and makes a new InputStream with the DCAT feed
     *
     * @return String whether the method has been executed with success
     */
    @Override
    public String execute() {
        GenerateDCAT dc = new GenerateDCAT(cfg,resourceManager);
        String out = dc.createDCATFeed();
        try {
            dcatInfo = new ByteArrayInputStream(out.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    /**
     * Getter for the feed
     *
     * @return DCAT feed
     */
    public InputStream getDcatInfo() {
        return dcatInfo;
    }

}
