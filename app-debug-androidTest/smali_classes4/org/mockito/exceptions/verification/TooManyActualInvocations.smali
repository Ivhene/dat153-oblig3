.class public Lorg/mockito/exceptions/verification/TooManyActualInvocations;
.super Lorg/mockito/exceptions/base/MockitoAssertionError;
.source "TooManyActualInvocations.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
