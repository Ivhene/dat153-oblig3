.class public Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "MethodValAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MethodValQualifierHierarchy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    const-class v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .param p3, "bottom"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 156
    iput-object p1, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    .line 157
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method


# virtual methods
.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 7
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 188
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/reflection/qual/UnknownMethod;

    .line 189
    invoke-virtual {v0, p2, v2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/reflection/qual/MethodValBottom;

    .line 190
    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/reflection/qual/UnknownMethod;

    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/common/reflection/qual/MethodValBottom;

    .line 194
    invoke-virtual {v0, p2, v3}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/common/reflection/qual/MethodVal;

    invoke-virtual {v0, p1, v3}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/common/reflection/qual/MethodVal;

    .line 198
    invoke-virtual {v0, p2, v3}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    invoke-static {p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getListOfMethodSignatures(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "subSignatures":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    invoke-static {p2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getListOfMethodSignatures(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 202
    .local v3, "superSignatures":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/common/reflection/MethodSignature;

    .line 203
    .local v5, "sig":Lorg/checkerframework/common/reflection/MethodSignature;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 204
    return v2

    .line 206
    .end local v5    # "sig":Lorg/checkerframework/common/reflection/MethodSignature;
    :cond_2
    goto :goto_0

    .line 207
    :cond_3
    return v1

    .line 197
    .end local v0    # "subSignatures":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    .end local v3    # "superSignatures":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected annotation in MethodVal"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 195
    :cond_5
    :goto_1
    return v2

    .line 191
    :cond_6
    :goto_2
    return v1
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 167
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    return-object v1

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    return-object p2

    .line 171
    :cond_1
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    return-object p1

    .line 173
    :cond_2
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-static {p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getListOfMethodSignatures(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "a1Sigs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    invoke-static {p2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getListOfMethodSignatures(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "a2Sigs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v2, "lubSigs":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v3, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    invoke-static {v3, v2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Ljava/util/Set;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 181
    .local v3, "result":Ljavax/lang/model/element/AnnotationMirror;
    return-object v3

    .line 183
    .end local v0    # "a1Sigs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    .end local v1    # "a2Sigs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    .end local v2    # "lubSigs":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    .end local v3    # "result":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    return-object v1
.end method
