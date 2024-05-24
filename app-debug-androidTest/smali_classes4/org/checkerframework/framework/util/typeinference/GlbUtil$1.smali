.class Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;
.super Ljava/lang/Object;
.source "GlbUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/framework/util/typeinference/GlbUtil;->sortForGlb(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field final synthetic val$types:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/QualifierHierarchy;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;->val$types:Ljavax/lang/model/util/Types;

    iput-object p2, p0, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;->val$qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I
    .locals 2
    .param p1, "qualHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p2, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 165
    nop

    .line 166
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    nop

    .line 171
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 170
    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 143
    check-cast p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;->compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 146
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 147
    .local v0, "underlyingType1":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 149
    .local v1, "underlyingType2":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;->val$types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v0, v1}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;->val$qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-direct {p0, v2, p1, p2}, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;->compareAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v2

    return v2

    .line 153
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/framework/util/typeinference/GlbUtil$1;->val$types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v0, v1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    const/4 v2, 0x1

    return v2

    .line 158
    :cond_1
    const/4 v2, -0x1

    return v2
.end method
