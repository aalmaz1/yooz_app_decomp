package cn.baos.watch.sdk.manager.message;

import cn.baos.message.CatagoryEnum;
import cn.baos.watch.sdk.interfac.watchbattery.OnOilBatteryListener;
import cn.baos.watch.w100.messages.Request_get_data;

/**
 * From MessageManager.getOilBattery:
 * send Request_get_data with data_catagary = CONFIG_ITEMS;
 * reply Config_items.datas[134] = cigaretteLevel.
 */
public final class OilBatteryRequest {
    public static Request_get_data build() {
        Request_get_data req = new Request_get_data();
        req.data_catagary = CatagoryEnum.CONFIG_ITEMS;
        return req;
    }

    private OilBatteryRequest() {}

    @SuppressWarnings("unused")
    private OnOilBatteryListener unusedKeep;
}
