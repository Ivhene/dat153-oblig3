.class public Lorg/mockito/internal/exceptions/ExceptionIncludingMockitoWarnings;
.super Ljava/lang/RuntimeException;
.source "ExceptionIncludingMockitoWarnings.java"


# static fields
.field private static final serialVersionUID:J = -0x523a5cbb56f3c86fL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method
