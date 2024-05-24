.class Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;
.super Ljava/lang/Object;
.source "ClusteringUtils.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultSimilarity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final idGenerator:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;)V
    .locals 0
    .param p1, "idGenerator"    # Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;->idGenerator:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;

    .line 132
    return-void
.end method


# virtual methods
.method public test(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Z
    .locals 4
    .param p1, "result1"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .param p2, "result2"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 137
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    .line 138
    .local v0, "vhe1":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    .line 140
    .local v1, "vhe2":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getSourceCheckClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getResultId()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 145
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;->idGenerator:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;

    invoke-interface {v2, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;->apply(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "resourceId1":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 147
    iget-object v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;->idGenerator:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;

    invoke-interface {v3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;->apply(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 150
    .end local v2    # "resourceId1":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 123
    check-cast p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    check-cast p2, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;->test(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;)Z

    move-result p1

    return p1
.end method
