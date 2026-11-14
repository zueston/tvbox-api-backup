.class public Lcom/fongmi/hide/BlockUrlClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

.field private activity:Landroid/content/Context;
.field private status:Landroid/widget/TextView;
.field private keysStatus:Landroid/widget/TextView;

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/fongmi/hide/BlockUrlClick;->activity:Landroid/content/Context;
    iput-object p2, p0, Lcom/fongmi/hide/BlockUrlClick;->status:Landroid/widget/TextView;
    iput-object p3, p0, Lcom/fongmi/hide/BlockUrlClick;->keysStatus:Landroid/widget/TextView;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    iget-object v0, p0, Lcom/fongmi/hide/BlockUrlClick;->activity:Landroid/content/Context;
    iget-object v1, p0, Lcom/fongmi/hide/BlockUrlClick;->status:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/fongmi/hide/BlockUrlClick;->keysStatus:Landroid/widget/TextView;
    invoke-static {v0, v1, v2}, Lcom/fongmi/hide/BlockUrlEditor;->show(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    return-void
.end method
