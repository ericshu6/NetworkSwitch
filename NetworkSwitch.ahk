; --- Wi-Fi Switcher Function (AutoHotkey v2) ---

SwitchWiFi(ssid) {
    Run(Format('{} /c netsh wlan connect name="{}"', A_ComSpec, ssid), , "Hide")
    TrayTip()
    TrayTip("Connecting to " ssid "...", "Wi-Fi Switcher")
}

; --- Hotkeys ---
^!1::SwitchWiFi("C1EBA80A")
^!2::SwitchWiFi("FRC-3863")
^!3::SwitchWiFi("FRC-3863-TESTBOT")