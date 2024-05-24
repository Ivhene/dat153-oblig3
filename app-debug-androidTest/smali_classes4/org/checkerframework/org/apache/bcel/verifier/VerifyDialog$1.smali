.class final Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$1;
.super Ljava/awt/event/WindowAdapter;
.source "VerifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .line 487
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$810()I

    .line 488
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$800()I

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 491
    :cond_0
    return-void
.end method
