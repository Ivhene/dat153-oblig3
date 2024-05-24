.class public Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "ClassValAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClassValQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 106
    iput-object p1, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    .line 107
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 108
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 141
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    return-object p1

    .line 145
    :cond_1
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    return-object p2

    .line 148
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "a1ClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-virtual {v1, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, "a2ClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 151
    .local v2, "glbClassNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/common/reflection/qual/ClassVal;

    invoke-virtual {v3, p1, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/common/reflection/qual/ClassVal;

    invoke-virtual {v3, p2, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 161
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 159
    :cond_4
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 173
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/reflection/qual/UnknownClass;

    .line 174
    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/reflection/qual/ClassValBottom;

    .line 175
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/reflection/qual/UnknownClass;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/reflection/qual/ClassValBottom;

    .line 179
    invoke-virtual {v0, p2, v2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/reflection/qual/ClassVal;

    invoke-virtual {v0, p2, v2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/reflection/qual/ClassBound;

    .line 183
    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    return v1

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "supValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, "subValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    .line 180
    .end local v0    # "supValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "subValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return v1

    .line 176
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 117
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    return-object p2

    .line 121
    :cond_1
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    return-object p1

    .line 124
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "a1ClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-virtual {v1, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "a2ClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 127
    .local v2, "lubClassNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/common/reflection/qual/ClassBound;

    invoke-virtual {v3, p1, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/common/reflection/qual/ClassBound;

    invoke-virtual {v3, p2, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 134
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 132
    :cond_4
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method
