.class public Lorg/mockito/exceptions/verification/NoInteractionsWanted;
.super Lorg/mockito/exceptions/base/MockitoAssertionError;
.source "NoInteractionsWanted.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
