.class final Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;
.super Ljava/lang/Object;
.source "ElementAnnotationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardBoundAnnos"
.end annotation


# instance fields
.field private final isSuperBounded:Z

.field private final isUnbounded:Z

.field public final lowerBoundAnnos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field public final possiblyBoth:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field public final upperBoundAnnos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field public final wildcard:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V
    .locals 1
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->wildcard:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 209
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->upperBoundAnnos:Ljava/util/Set;

    .line 210
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->lowerBoundAnnos:Ljava/util/Set;

    .line 211
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->possiblyBoth:Ljava/util/Set;

    .line 213
    invoke-static {p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->hasExplicitSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->isSuperBounded:Z

    .line 214
    invoke-static {p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->hasNoExplicitBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->isUnbounded:Z

    .line 215
    return-void
.end method


# virtual methods
.method addAnnotation(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)V
    .locals 2
    .param p1, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 221
    nop

    .line 222
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->getPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 223
    .local v0, "isInFrontOfWildcard":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->isUnbounded:Z

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->possiblyBoth:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_1
    if-eqz v0, :cond_3

    .line 231
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->isSuperBounded:Z

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->upperBoundAnnos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->lowerBoundAnnos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_3
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->isSuperBounded:Z

    if-eqz v1, :cond_4

    .line 238
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->lowerBoundAnnos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->upperBoundAnnos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_1
    return-void
.end method

.method apply()V
    .locals 5

    .line 251
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->wildcard:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 252
    .local v0, "extendsBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->wildcard:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 254
    .local v1, "superBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->upperBoundAnnos:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 255
    .local v3, "extAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 256
    .end local v3    # "extAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 257
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->lowerBoundAnnos:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 258
    .local v3, "supAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 259
    .end local v3    # "supAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 261
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->possiblyBoth:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 262
    .local v3, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 267
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 268
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 270
    .end local v3    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_2

    .line 271
    :cond_3
    return-void
.end method
