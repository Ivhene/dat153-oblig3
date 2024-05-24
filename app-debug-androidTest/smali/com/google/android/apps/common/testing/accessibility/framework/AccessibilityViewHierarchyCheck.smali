.class public abstract Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;
.source "AccessibilityViewHierarchyCheck.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "A11yViewHierarchyCheck"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public runCheckOnViewHierarchy(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewHierarchyCheck;->runCheckOnViewHierarchy(Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract runCheckOnViewHierarchy(Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation
.end method

.method protected runDelegationCheckOnView(Landroid/view/View;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;
    .locals 16
    .param p1, "root"    # Landroid/view/View;
    .param p2, "fromCheck"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;
    .param p3, "toCheck"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;
    .param p4, "parameters"    # Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "actualRoot":Landroid/view/View;
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v1

    .line 84
    .local v1, "mapFromElementIdToView":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Landroid/view/View;>;"
    nop

    .line 85
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->newBuilder(Landroid/view/View;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->setViewOriginMap(Lcom/google/common/collect/BiMap;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$BuilderAndroid;->build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;

    move-result-object v2

    .line 91
    .local v2, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 92
    .local v3, "rootId":Ljava/lang/Long;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 93
    .local v6, "evalRoot":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    :goto_0
    if-nez v6, :cond_1

    .line 94
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "A11yViewHierarchyCheck"

    const-string v9, "Unable to determine root during accessibility check delegation, using full hierarchy."

    invoke-static {v8, v9, v7}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    nop

    .line 101
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual {v7, v2, v6, v8}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheck;->runCheckOnHierarchy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/Parameters;)Ljava/util/List;

    move-result-object v9

    .line 104
    .local v9, "hierarchyCheckResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v10, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;

    .line 106
    .local v12, "hierarchyCheckResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    invoke-virtual {v12}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;->getElement()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v13

    .line 108
    .local v13, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v1, v14}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 109
    .local v14, "checkedView":Landroid/view/View;
    :goto_2
    new-instance v15, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 110
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v15, v5, v12, v14}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;-><init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;Landroid/view/View;)V

    .line 109
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v12    # "hierarchyCheckResult":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityHierarchyCheckResult;
    .end local v13    # "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .end local v14    # "checkedView":Landroid/view/View;
    goto :goto_1

    .line 113
    :cond_3
    return-object v10
.end method
