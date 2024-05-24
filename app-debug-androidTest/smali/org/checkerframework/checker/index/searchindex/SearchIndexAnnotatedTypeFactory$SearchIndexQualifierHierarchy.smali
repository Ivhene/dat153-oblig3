.class final Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "SearchIndexAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchIndexQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 73
    iput-object p1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    .line 74
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 75
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 79
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-object p2

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    return-object p1

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    return-object p1

    .line 88
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    return-object p2

    .line 91
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    return-object p1

    .line 94
    :cond_4
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    return-object p2

    .line 101
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    .line 102
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v0, "combinedArrays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/NegativeIndexFor;

    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/NegativeIndexFor;

    .line 106
    invoke-virtual {v1, p2, v3}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 109
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->createSearchIndexFor(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 107
    :cond_7
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->createNegativeIndexFor(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 6
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 158
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/SearchIndexUnknown;

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/SearchIndexBottom;

    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    return v1

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/SearchIndexUnknown;

    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 165
    return v2

    .line 167
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/SearchIndexBottom;

    invoke-virtual {v0, p2, v3}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    return v2

    .line 172
    :cond_3
    nop

    .line 173
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "superArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 175
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, "subArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v5, Lorg/checkerframework/checker/index/qual/NegativeIndexFor;

    invoke-virtual {v4, p1, v5}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v5, Lorg/checkerframework/checker/index/qual/SearchIndexFor;

    .line 181
    invoke-virtual {v4, p2, v5}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    .line 180
    :goto_0
    return v1
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 115
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-object p1

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    return-object p2

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    return-object p2

    .line 124
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    return-object p1

    .line 127
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    return-object p2

    .line 130
    :cond_4
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    return-object p1

    .line 137
    :cond_5
    nop

    .line 138
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "arrayIntersection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 140
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 146
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/SearchIndexFor;

    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/SearchIndexFor;

    .line 147
    invoke-virtual {v1, p2, v3}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 151
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    new-array v2, v2, [Ljava/lang/String;

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->createNegativeIndexFor(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 148
    :cond_8
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory$SearchIndexQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    new-array v2, v2, [Ljava/lang/String;

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->createSearchIndexFor(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method
