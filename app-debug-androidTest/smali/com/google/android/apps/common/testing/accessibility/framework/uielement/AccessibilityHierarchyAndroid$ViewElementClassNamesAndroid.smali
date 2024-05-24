.class Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;
.source "AccessibilityHierarchyAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewElementClassNamesAndroid"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;)V
    .locals 1
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;

    .line 632
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;->getClassNameMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;-><init>(Ljava/util/Map;)V

    .line 633
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;",
            ">;)V"
        }
    .end annotation

    .line 606
    .local p1, "windowHierarchyElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;>;"
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;-><init>()V

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v0, "classIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;

    .line 609
    .local v2, "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;->getAllViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;

    .line 610
    .local v4, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    invoke-static {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;->getSuperclassSet(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    .line 612
    .local v5, "classReferenceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 613
    .local v7, "className":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 614
    .local v8, "classNameId":Ljava/lang/Integer;
    if-nez v8, :cond_0

    .line 615
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 616
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->addIdToSuperclassViewList(I)V

    .line 619
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "classNameId":Ljava/lang/Integer;
    goto :goto_2

    .line 620
    .end local v4    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .end local v5    # "classReferenceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    goto :goto_1

    .line 621
    .end local v2    # "window":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElementAndroid;
    :cond_2
    goto :goto_0

    .line 622
    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;->uniqueViewElementsClassNames:Lcom/google/common/collect/ImmutableBiMap;

    .line 623
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 627
    .local p1, "viewElementsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;-><init>(Ljava/util/Map;)V

    .line 628
    return-void
.end method

.method private static addAllSuperinterfacesRecursivelyToSetBuilder(Ljava/lang/Class;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p0, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 660
    .local v0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 661
    .local v3, "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 662
    invoke-static {v3, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;->addAllSuperinterfacesRecursivelyToSetBuilder(Ljava/lang/Class;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 660
    .end local v3    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_0
    return-void
.end method

.method private static getClassByName(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 669
    const-string v0, "A11yHierarchyAndroid"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 671
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 672
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 673
    return-object v0

    .line 675
    :cond_0
    :try_start_1
    const-string v3, "Unsuccessful attempt to get ClassLoader to load %1$s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 680
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 677
    :catch_0
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v3, "Unsuccessful attempt to load class %1$s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/libraries/accessibility/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 681
    nop

    .line 682
    const/4 v0, 0x0

    return-object v0

    .line 680
    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 681
    throw v0
.end method

.method private static getSuperclassSet(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .param p0, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 642
    .local v0, "className":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 643
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 646
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;->getClassByName(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 648
    .local v1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 649
    .local v2, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    :goto_0
    if-eqz v1, :cond_1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 651
    invoke-static {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchyAndroid$ViewElementClassNamesAndroid;->addAllSuperinterfacesRecursivelyToSetBuilder(Ljava/lang/Class;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 652
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method
