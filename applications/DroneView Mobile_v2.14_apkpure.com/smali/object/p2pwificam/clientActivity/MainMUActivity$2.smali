.class Lobject/p2pwificam/clientActivity/MainMUActivity$2;
.super Ljava/lang/Object;
.source "MainMUActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MainMUActivity;->showSureDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MainMUActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$2;->val$view:Landroid/view/View;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 171
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$2;->val$view:Landroid/view/View;

    const v3, 0x7f080111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 172
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "back"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    invoke-virtual {v2, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lobject/p2pipcam/utils/Pub;->setAutoRun(Landroid/content/Context;I)V

    .line 180
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/MainMUActivity;->finish()V

    goto :goto_0
.end method
