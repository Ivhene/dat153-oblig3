.class public Lorg/mockito/exceptions/verification/ArgumentsAreDifferent;
.super Lorg/mockito/exceptions/base/MockitoAssertionError;
.source "ArgumentsAreDifferent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "wanted"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lorg/mockito/exceptions/verification/ArgumentsAreDifferent;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-super {p0}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->removeFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
