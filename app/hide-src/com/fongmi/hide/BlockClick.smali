.class public Lcom/fongmi/hide/BlockClick;
.super Ljava/lang/Object;
.source "BlockClick.java"

.implements Landroid/view/View$OnClickListener;

.field private activity:Landroid/content/Context;
.field private status:Landroid/widget/TextView;

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/fongmi/hide/BlockClick;->activity:Landroid/content/Context;
    iput-object p2, p0, Lcom/fongmi/hide/BlockClick;->status:Landroid/widget/TextView;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    invoke-static {}, Lcom/fongmi/hide/Block;->toggleBlock()V
    invoke-static {}, Lcom/fongmi/hide/Block;->isBlockOn()Z
    move-result v0
    invoke-static {v0}, Lt61;->m(Z)Ljava/lang/String;
    move-result-object v1
    iget-object v2, p0, Lcom/fongmi/hide/BlockClick;->status:Landroid/widget/TextView;
    if-eqz v2, :cond_no_status
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :cond_no_status
    iget-object v0, p0, Lcom/fongmi/hide/BlockClick;->activity:Landroid/content/Context;
    const v1, 0x7f13038c
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method
