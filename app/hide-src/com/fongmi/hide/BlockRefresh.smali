.class public Lcom/fongmi/hide/BlockRefresh;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private status:Landroid/widget/TextView;

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/fongmi/hide/BlockRefresh;->status:Landroid/widget/TextView;
    return-void
.end method

# 后台线程拉取
.method public static run(Landroid/widget/TextView;)V
    .locals 3
    if-eqz p0, :cond_go
    :try_start
    const-string v0, "\u6b63\u5728\u83b7\u53d6..."
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :cond_go
    :cond_go
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/fongmi/hide/BlockRefresh;
    invoke-direct {v1, p0}, Lcom/fongmi/hide/BlockRefresh;-><init>(Landroid/widget/TextView;)V
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public run()V
    .locals 4
    invoke-static {}, Lcom/fongmi/hide/Block;->refreshKeys()Z
    move-result v0
    if-eqz v0, :cond_fail
    invoke-static {}, Lcom/fongmi/hide/Block;->getKeys()Ljava/lang/String;
    move-result-object v1
    goto :goto_upd
    :cond_fail
    const-string v1, "\u83b7\u53d6\u5931\u8d25"
    :goto_upd
    iget-object v2, p0, Lcom/fongmi/hide/BlockRefresh;->status:Landroid/widget/TextView;
    if-eqz v2, :cond_end
    new-instance v3, Lcom/fongmi/hide/BlockRefresh$1;
    invoke-direct {v3, p0, v2, v1}, Lcom/fongmi/hide/BlockRefresh$1;-><init>(Lcom/fongmi/hide/BlockRefresh;Landroid/widget/TextView;Ljava/lang/String;)V
    iget-object v2, p0, Lcom/fongmi/hide/BlockRefresh;->status:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :cond_end
    return-void
.end method
