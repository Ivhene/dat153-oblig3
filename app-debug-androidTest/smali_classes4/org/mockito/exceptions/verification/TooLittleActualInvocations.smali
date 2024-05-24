.class public Lorg/mockito/exceptions/verification/TooLittleActualInvocations;
.super Lorg/mockito/exceptions/base/MockitoAssertionError;
.source "TooLittleActualInvocations.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method
