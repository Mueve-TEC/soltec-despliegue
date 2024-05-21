FROM odoo:16

COPY --chown=odoo:odoo ./modules /mnt/extra-addons

COPY --chown=odoo:odoo ./submodules/odoo-argentina-ce/l10n_ar_afipws /mnt/extra-addons/l10n_ar_afipws
COPY --chown=odoo:odoo ./submodules/odoo-argentina-ce/l10n_ar_afipws_caea /mnt/extra-addons/l10n_ar_afipws_caea
COPY --chown=odoo:odoo ./submodules/odoo-argentina-ce/l10n_ar_afipws_fe /mnt/extra-addons/l10n_ar_afipws_fe
COPY --chown=odoo:odoo ./submodules/odoo-argentina-ce/l10n_ar_pos_afipws_fe /mnt/extra-addons/l10n_ar_pos_afipws_fe
COPY --chown=odoo:odoo ./submodules/odoo-argentina-ce/l10n_ar_reports /mnt/extra-addons/l10n_ar_reports

COPY --chown=odoo:odoo ./submodules/odoo-argentina/l10n_ar_purchase /mnt/extra-addons/l10n_ar_purchase
COPY --chown=odoo:odoo ./submodules/odoo-argentina/l10n_ar_purchase_stock /mnt/extra-addons/l10n_ar_purchase_stock
COPY --chown=odoo:odoo ./submodules/odoo-argentina/l10n_ar_ux /mnt/extra-addons/l10n_ar_ux
#COPY --chown=odoo:odoo ./submodules/odoo-argentina/l10n_ar_withholding_ux /mnt/extra-addons/l10n_ar_withholding_ux
COPY --chown=odoo:odoo ./submodules/odoo-argentina/l10n_ar_account_withholding /mnt/extra-addons/l10n_ar_account_withholding

COPY --chown=odoo:odoo ./submodules/account-financial-tools/account_ux /mnt/extra-addons/account_ux


COPY --chown=odoo:odoo ./submodules/l10n-argentina/l10n_ar_bank /mnt/extra-addons/l10n_ar_bank
COPY --chown=odoo:odoo ./submodules/reporting-engine/report_xlsx /mnt/extra-addons/report_xlsx
#COPY --chown=odoo:odoo ./submodules/account-payment/account_withholding /mnt/extra-addons/account_withholding
COPY --chown=odoo:odoo ./submodules/account-payment/account_withholding_automatic /mnt/extra-addons/account_withholding_automatic
 

COPY --chown=odoo:odoo transport.py /var/lib/odoo/.local/lib/python3.9/site-packages/pysimplesoap/transport.py

USER root
RUN apt-get update && apt-get install git -y
RUN apt-get install python3-xlrd python3-chardet python3-ofxparse -y
COPY openssl.cnf /etc/ssl/openssl.cnf

USER odoo
RUN pip3 install future
RUN pip3 install pyOpenSSL
RUN pip3 install pysimplesoap

RUN python3 -m pip install "httplib2==0.20.4"
RUN python3 -m pip install "git+https://github.com/pysimplesoap/pysimplesoap@a330d9c4af1b007fe1436f979ff0b9f66613136e"
RUN python3 -m pip install "git+https://github.com/ingadhoc/pyafipws@py3k"
RUN python3 -m pip install "git+https://github.com/OCA/openupgradelib/@master"
