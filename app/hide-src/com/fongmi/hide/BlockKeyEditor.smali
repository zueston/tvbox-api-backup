.class public Lcom/fongmi/hide/BlockKeyEditor;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

.field private et:Landroid/widget/EditText;
.field private status:Landroid/widget/TextView;

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/fongmi/hide/BlockKeyEditor;->et:Landroid/widget/EditText;
    iput-object p2, p0, Lcom/fongmi/hide/BlockKeyEditor;->status:Landroid/widget/TextView;
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    new-instance v0, Landroid/widget/EditText;
    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
    const/4 v1, 0x3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V
    invoke-static {}, Lcom/fongmi/hide/Block;->getKeys()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    new-instance v1, Lf5;
    invoke-direct {v1, p0}, Lf5;-><init>(Landroid/content/Context;)V
    const v2, 0x7f13038d
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    move-result-object v2
    invoke-virtual {v1, v2}, Lf5;->setTitle(Ljava/lang/CharSequence;)Lf5;
    invoke-virtual {v1, v0}, Lf5;->setView(Landroid/view/View;)Lf5;
    new-instance v2, Lcom/fongmi/hide/BlockKeyEditor;
    invoke-direct {v2, v0, p1}, Lcom/fongmi/hide/BlockKeyEditor;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;)V
    const v3, 0x7f13038e
    invoke-virtual {v1, v3, v2}, Lf5;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lf5;
    const v2, 0x7f13038f
    const/4 v3, 0x0
    invoke-virtual {v1, v2, v3}, Lf5;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lf5;
    invoke-virtual {v1}, Lf5;->create()Lg5;
    move-result-object v1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    iget-object v0, p0, Lcom/fongmi/hide/BlockKeyEditor;->et:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/fongmi/hide/Block;->setKeys(Ljava/lang/String;)V
    invoke-static {}, Lcom/fongmi/hide/Block;->getKeys()Ljava/lang/String;
    move-result-object v0
    iget-object v1, p0, Lcom/fongmi/hide/BlockKeyEditor;->status:Landroid/widget/TextView;
    if-eqz v1, :cond_end
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :cond_end
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    return-void
.end method
