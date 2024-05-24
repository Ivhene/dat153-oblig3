.class public final enum Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;
.super Ljava/lang/Enum;
.source "AccessibilityCheckPreset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field private static final CLASS_NAME_TO_HIERARCHY_CHECK:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS_TO_HIERARCHY_CHECK:Lcom/google/common/collect/ImmutableClassToInstanceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableClassToInstanceMap<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LATEST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field public static final enum NO_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field public static final enum PRERELEASE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field public static final enum VERSION_1_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field public static final enum VERSION_2_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field public static final enum VERSION_3_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

.field public static final enum VERSION_3_1_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;


# direct methods
.method private static synthetic $values()[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;
    .locals 7

    .line 40
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->LATEST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_1_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_2_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    sget-object v3, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    sget-object v4, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_1_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    sget-object v5, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->NO_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    sget-object v6, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->PRERELEASE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    const-string v1, "LATEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->LATEST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 45
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    const-string v1, "VERSION_1_0_CHECKS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_1_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 48
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    const-string v1, "VERSION_2_0_CHECKS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_2_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 51
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    const-string v1, "VERSION_3_0_CHECKS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 54
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    const-string v1, "VERSION_3_1_CHECKS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_1_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 57
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    const-string v1, "NO_CHECKS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->NO_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 63
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    const-string v1, "PRERELEASE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->PRERELEASE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 40
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->$values()[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->$VALUES:[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    .line 66
    new-instance v0, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;-><init>()V

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/SpeakableTextPresentCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/SpeakableTextPresentCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/SpeakableTextPresentCheck;-><init>()V

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;-><init>()V

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;-><init>()V

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateSpeakableTextCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateSpeakableTextCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateSpeakableTextCheck;-><init>()V

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;-><init>()V

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;-><init>()V

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;-><init>()V

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;-><init>()V

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;-><init>()V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClassNameCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClassNameCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClassNameCheck;-><init>()V

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;-><init>()V

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;

    new-instance v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;

    invoke-direct {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;-><init>()V

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableClassToInstanceMap$Builder;->build()Lcom/google/common/collect/ImmutableClassToInstanceMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->CLASS_TO_HIERARCHY_CHECK:Lcom/google/common/collect/ImmutableClassToInstanceMap;

    .line 83
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->mapClassNameToInstance(Lcom/google/common/collect/ImmutableClassToInstanceMap;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->CLASS_NAME_TO_HIERARCHY_CHECK:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAccessibilityHierarchyChecksForPreset(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .param p0, "preset"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 110
    .local v0, "checks":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->NO_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 123
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->CLASS_TO_HIERARCHY_CHECK:Lcom/google/common/collect/ImmutableClassToInstanceMap;

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/SpeakableTextPresentCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 124
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/EditableContentDescCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 125
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TouchTargetSizeCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 126
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateSpeakableTextCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 127
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 128
    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_1_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v2, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 133
    :cond_1
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClickableSpanCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 134
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/DuplicateClickableBoundsCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 135
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/RedundantDescriptionCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 136
    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_2_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v2, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 141
    :cond_2
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ImageContrastCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 142
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/ClassNameCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 143
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TraversalOrderCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 144
    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_0_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v2, :cond_3

    .line 145
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 149
    :cond_3
    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/checks/LinkPurposeUnclearCheck;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 150
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->VERSION_3_1_CHECKS:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_4

    .line 151
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 155
    :cond_4
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->LATEST:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_5

    .line 156
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 159
    :cond_5
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->PRERELEASE:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    if-ne p0, v1, :cond_6

    .line 160
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 167
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static getHierarchyCheckForClass(Ljava/lang/Class;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;)",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;"
        }
    .end annotation

    .line 88
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->CLASS_TO_HIERARCHY_CHECK:Lcom/google/common/collect/ImmutableClassToInstanceMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    return-object v0
.end method

.method public static getHierarchyCheckForClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->CLASS_NAME_TO_HIERARCHY_CHECK:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    return-object v0
.end method

.method private static mapClassNameToInstance(Lcom/google/common/collect/ImmutableClassToInstanceMap;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableClassToInstanceMap<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            ">;"
        }
    .end annotation

    .line 172
    .local p0, "classToInstanceMap":Lcom/google/common/collect/ImmutableClassToInstanceMap;, "Lcom/google/common/collect/ImmutableClassToInstanceMap<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 174
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableClassToInstanceMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 175
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 176
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;>;"
    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->$VALUES:[Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    invoke-virtual {v0}, [Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckPreset;

    return-object v0
.end method
