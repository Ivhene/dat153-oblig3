.class public Lorg/mockito/exceptions/verification/TooFewActualInvocations;
.super Lorg/mockito/exceptions/verification/TooLittleActualInvocations;
.source "TooFewActualInvocations.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/verification/TooLittleActualInvocations;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
