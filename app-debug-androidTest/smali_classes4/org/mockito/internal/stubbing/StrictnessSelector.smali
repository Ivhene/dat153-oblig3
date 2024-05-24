.class public final Lorg/mockito/internal/stubbing/StrictnessSelector;
.super Ljava/lang/Object;
.source "StrictnessSelector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineStrictness(Lorg/mockito/stubbing/Stubbing;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/quality/Strictness;)Lorg/mockito/quality/Strictness;
    .locals 1
    .param p0, "stubbing"    # Lorg/mockito/stubbing/Stubbing;
    .param p1, "mockSettings"    # Lorg/mockito/mock/MockCreationSettings;
    .param p2, "testLevelStrictness"    # Lorg/mockito/quality/Strictness;

    .line 30
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->getStrictness()Lorg/mockito/quality/Strictness;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->getStrictness()Lorg/mockito/quality/Strictness;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    return-object v0

    .line 38
    :cond_1
    return-object p2
.end method
