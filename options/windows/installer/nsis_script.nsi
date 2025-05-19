Icon "${ICON_FILE}" 
RequestExecutionLevel user
OutFile ${INSTALLER_FILENAME}
SilentInstall silent
Section "${PRODUCT_NAME}"
	SetOutPath "$LOCALAPPDATA\${PRODUCT_NAME}" 
	File /r "${SOURCE_DIR}\*.*"
	ExecWait `$LOCALAPPDATA\${PRODUCT_NAME}\${PRODUCT_NAME}.exe`
SectionEnd