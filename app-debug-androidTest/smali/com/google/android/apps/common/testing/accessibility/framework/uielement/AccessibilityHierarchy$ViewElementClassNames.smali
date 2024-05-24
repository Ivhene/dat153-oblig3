.class Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;
.super Ljava/lang/Object;
.source "AccessibilityHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewElementClassNames"
.end annotation


# instance fields
.field protected uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;)V
    .locals 1
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;->getClassNameMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "viewElementsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;

    .line 168
    return-void
.end method


# virtual methods
.method public getClassNameForIdentifier(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierForClassName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method getMap()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;

    return-object v0
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;
    .locals 2

    .line 188
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto$Builder;->putAllClassName(Ljava/util/Map;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;

    .line 188
    return-object v0
.end method
