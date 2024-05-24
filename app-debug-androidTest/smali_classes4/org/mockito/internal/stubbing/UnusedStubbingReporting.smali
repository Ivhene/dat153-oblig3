.class public final Lorg/mockito/internal/stubbing/UnusedStubbingReporting;
.super Ljava/lang/Object;
.source "UnusedStubbingReporting.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldBeReported(Lorg/mockito/stubbing/Stubbing;)Z
    .locals 2
    .param p0, "stubbing"    # Lorg/mockito/stubbing/Stubbing;

    .line 18
    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->getStrictness()Lorg/mockito/quality/Strictness;

    move-result-object v0

    sget-object v1, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
