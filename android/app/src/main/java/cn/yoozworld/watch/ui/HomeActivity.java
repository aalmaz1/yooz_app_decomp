package cn.yoozworld.watch.ui;

import cn.yoozworld.watch.BaosBleHost;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

/**
 * Launcher activity (original: cn.yoozworld.watch.ui.HomeActivity,
 * see docs/original/AndroidManifest.xml). Registers the BLE bridge
 * channels recovered from libapp.so.
 */
public class HomeActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        BaosBleHost.attach(this, flutterEngine.getDartExecutor().getBinaryMessenger());
    }
}
