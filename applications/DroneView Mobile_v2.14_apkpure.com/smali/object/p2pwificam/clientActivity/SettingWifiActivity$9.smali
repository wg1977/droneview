.class Lobject/p2pwificam/clientActivity/SettingWifiActivity$9;
.super Ljava/lang/Object;
.source "SettingWifiActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-static {v0, p3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$26(Lobject/p2pwificam/clientActivity/SettingWifiActivity;I)V

    .line 515
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$24(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    return-void
.end method