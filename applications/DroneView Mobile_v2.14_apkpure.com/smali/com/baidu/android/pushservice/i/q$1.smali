.class Lcom/baidu/android/pushservice/i/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/i/q;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/android/pushservice/i/q;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i/q;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/q$1;->b:Lcom/baidu/android/pushservice/i/q;

    iput-boolean p2, p0, Lcom/baidu/android/pushservice/i/q$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/q$1;->b:Lcom/baidu/android/pushservice/i/q;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Statistics-BaseSender"

    const-string v1, "Network is not reachable!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/q$1;->b:Lcom/baidu/android/pushservice/i/q;

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/i/q$1;->a:Z

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/q;->a(Lcom/baidu/android/pushservice/i/q;Z)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/q$1;->b:Lcom/baidu/android/pushservice/i/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/q;->b(Lcom/baidu/android/pushservice/i/q;Z)Z

    goto :goto_0
.end method