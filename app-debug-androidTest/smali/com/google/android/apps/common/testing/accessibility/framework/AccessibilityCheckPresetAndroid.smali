.class public final Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid;
.super Ljava/lang/Object;
.source "AccessibilityCheckPresetAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventChecksForPreset(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .param p0, "preset"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheck;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 119
    .local v0, "checks":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityEventCheck;>;"
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->NO_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-eq p0, v1, :cond_6

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_1_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AnnouncementEventCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/AnnouncementEventCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 126
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_2_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 131
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 136
    :cond_2
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_1_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_3

    .line 137
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 141
    :cond_3
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->LATEST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_4

    .line 142
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 144
    :cond_4
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->PRERELEASE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_5

    .line 145
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 152
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 121
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method

.method public static getViewChecksForPreset(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .param p0, "preset"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 47
    .local v0, "checks":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;>;"
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->NO_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 52
    :cond_0
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/TouchTargetSizeViewCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/TouchTargetSizeViewCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 53
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/TextContrastViewCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/TextContrastViewCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 54
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/DuplicateSpeakableTextViewHierarchyCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/DuplicateSpeakableTextViewHierarchyCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 55
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/SpeakableTextPresentViewCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/SpeakableTextPresentViewCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 56
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/EditableContentDescViewCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/EditableContentDescViewCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 57
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_1_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 62
    :cond_1
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/ClickableSpanViewCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClickableSpanViewCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 63
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/RedundantContentDescViewCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/RedundantContentDescViewCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 64
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/DuplicateClickableBoundsViewCheck;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/DuplicateClickableBoundsViewCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 65
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_2_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_2

    .line 66
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 70
    :cond_2
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_3

    .line 71
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 77
    :cond_3
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;

    .line 80
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->getHierarchyCheckForClass(Ljava/lang/Class;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-direct {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 81
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;

    .line 84
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->getHierarchyCheckForClass(Ljava/lang/Class;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-direct {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 85
    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;

    .line 88
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->getHierarchyCheckForClass(Ljava/lang/Class;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-direct {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPresetAndroid$DelegatedViewHierarchyCheck;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 90
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_1_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_4

    .line 91
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 95
    :cond_4
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->LATEST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_5

    .line 96
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 99
    :cond_5
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->PRERELEASE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_6

    .line 100
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 107
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
