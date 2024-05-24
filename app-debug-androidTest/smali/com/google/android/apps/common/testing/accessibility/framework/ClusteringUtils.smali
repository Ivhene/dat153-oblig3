.class public Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;
.super Ljava/lang/Object;
.source "ClusteringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;,
        Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;,
        Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;
    }
.end annotation


# static fields
.field public static final SIMILAR_RESULTS:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMILAR_RESULTS_NEAREST_ANCESTOR_CHAIN:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMILAR_RESULTS_NEAREST_ANCESTOR_RELATION:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->SIMILAR_RESULTS:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;

    .line 91
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->SIMILAR_RESULTS_NEAREST_ANCESTOR_RELATION:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;

    .line 110
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResultSimilarity;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$ResourceIdGenerator;)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->SIMILAR_RESULTS_NEAREST_ANCESTOR_CHAIN:Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cluster(Ljava/util/Collection;Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 168
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "similarity":Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;, "Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "clusters":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "value":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 171
    .local v3, "alreadySeen":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 172
    .local v5, "cluster":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils$Similarity;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v3, 0x1

    .line 175
    goto :goto_2

    .line 177
    .end local v5    # "cluster":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    goto :goto_1

    .line 178
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 179
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    .end local v3    # "alreadySeen":Z
    :cond_2
    goto :goto_0

    .line 182
    :cond_3
    return-object v0
.end method

.method public static getPseudoResourceId(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Z)Ljava/lang/String;
    .locals 2
    .param p0, "vhe"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "includeIndices"    # Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getResourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->getResourceIdBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    .local v0, "resourceId":Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getResourceIdBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Z)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "vhe"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "includeIndices"    # Z

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getResourceName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "resourceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    .line 222
    .local v1, "parent":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-eqz v1, :cond_5

    .line 223
    invoke-static {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->getResourceIdBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    .local v2, "parentResourceId":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_5

    .line 225
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v3

    .line 226
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 228
    invoke-virtual {v1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v5

    if-ne v5, p0, :cond_4

    .line 229
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->getShortClassName(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 230
    .local v5, "shortClassName":Ljava/lang/CharSequence;
    if-eqz v5, :cond_1

    .line 231
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 232
    if-eqz p1, :cond_3

    .line 233
    const/16 v6, 0x5b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 235
    :cond_1
    if-eqz p1, :cond_2

    .line 236
    const-string v6, ":nth-child("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 238
    :cond_2
    const-string v6, ":child"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_3
    :goto_1
    return-object v2

    .line 226
    .end local v5    # "shortClassName":Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "parentResourceId":Ljava/lang/StringBuilder;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getShortClassName(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "vhe"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    .local v0, "className":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 256
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->simpleClassName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1

    .line 260
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->simpleClassName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 262
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$static$0(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/String;
    .locals 1
    .param p0, "vhe"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 92
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->getPseudoResourceId(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$1(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Ljava/lang/String;
    .locals 1
    .param p0, "vhe"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/ClusteringUtils;->getPseudoResourceId(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static simpleClassName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "className"    # Ljava/lang/CharSequence;

    .line 270
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 271
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 272
    .local v1, "ithChar":C
    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 270
    .end local v1    # "ithChar":C
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 273
    .restart local v1    # "ithChar":C
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 276
    .end local v0    # "i":I
    .end local v1    # "ithChar":C
    :cond_2
    return-object p0
.end method
