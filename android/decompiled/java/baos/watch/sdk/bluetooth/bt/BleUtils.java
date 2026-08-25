package cn.baos.watch.sdk.bluetooth.bt;

import android.bluetooth.le.ScanResult;
import cn.baos.watch.sdk.bluetooth.constant.BTConstant;
import cn.baos.watch.sdk.util.DeviceIdUtil;
import org.apache.commons.lang3.StringUtils;

/** Huabao / YOOZ advertise filter. */
public class BleUtils {
    public boolean isHuabaoDevice(ScanResult scan) {
        if (scan.getScanRecord() == null) {
            return false;
        }
        byte[] raw = scan.getScanRecord().getBytes();
        if (raw == null || raw.length <= 15) {
            return false;
        }
        try {
            String hex = DeviceIdUtil.bytesToHex(raw);
            String mac = scan.getDevice().getAddress().replace(":", "");
            int idx = hex.indexOf(mac);
            if (idx < 0) {
                return false;
            }
            String c1 = hex.substring(idx - 4, idx - 2);
            String c2 = hex.substring(idx - 2, idx);
            String tag = hex.substring(idx + mac.length(), idx + mac.length() + 2);
            return BTConstant.COMPANY_ID.equals(c1)
                    && BTConstant.COMPANY_ID_TWO.equals(c2)
                    && "01".equals(tag);
        } catch (Exception e) {
            return false;
        }
    }
}
