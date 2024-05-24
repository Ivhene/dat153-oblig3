.class public Lorg/mockito/exceptions/misusing/RedundantListenerException;
.super Lorg/mockito/exceptions/base/MockitoException;
.source "RedundantListenerException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
