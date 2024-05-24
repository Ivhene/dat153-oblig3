.class Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;
.super Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;
.source "CFAbstractValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/flow/CFAbstractValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MostSpecificVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>.AnnotationSetAndTypeMirrorVisitor;"
    }
.end annotation


# instance fields
.field backupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field error:Z

.field mostSpecific:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/flow/CFAbstractValue;Ljava/util/Set;)V
    .locals 0
    .param p2, "result"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "aTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p4, "bTypeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;TV;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.MostSpecificVisitor;"
    .local p5, "aSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p6, "bSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p7, "backup":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local p8, "mostSpecific":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 235
    invoke-direct/range {p0 .. p6}, Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;-><init>(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;Ljava/util/Set;)V

    .line 221
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->error:Z

    .line 236
    iput-object p8, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->mostSpecific:Ljava/util/Set;

    .line 237
    if-eqz p7, :cond_0

    .line 238
    invoke-virtual {p7}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->backupSet:Ljava/util/Set;

    goto :goto_0

    .line 244
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->backupSet:Ljava/util/Set;

    .line 246
    :goto_0
    return-void
.end method

.method private getBackUpAnnoIn(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 249
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.MostSpecificVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->backupSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->error:Z

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 256
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->backupSet:Ljava/util/Set;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected visitAnnotationExistInBothSets(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 3
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "b"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 262
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.MostSpecificVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 263
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->mostSpecific:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0, p2, p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->mostSpecific:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->getBackUpAnnoIn(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 269
    .local v1, "backup":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_2

    .line 270
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->mostSpecific:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v1    # "backup":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    :goto_0
    return-void
.end method

.method protected visitAnnotationExistInOneSet(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 6
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "atv"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 290
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.MostSpecificVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->this$0:Lorg/checkerframework/framework/flow/CFAbstractValue;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 291
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 293
    .local v1, "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->result:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->access$000(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {p0, p1, v1, p3}, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->visitAnnotationExistInBothSets(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 295
    return-void

    .line 297
    :cond_0
    nop

    .line 298
    invoke-static {v0, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v2

    .line 299
    .local v2, "lBSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0, v2, p3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 300
    .local v3, "lowerBound":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v0, p1, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->mostSpecific:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_2
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->getBackUpAnnoIn(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 306
    .local v4, "backup":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_3

    .line 307
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->mostSpecific:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v4    # "backup":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    :goto_0
    return-void
.end method

.method protected visitNeitherAnnotationExistsInBothSets(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 2
    .param p1, "aAtv"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "bAtv"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 278
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.MostSpecificVisitor;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->result:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->access$000(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 282
    .local v0, "aUB":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 283
    .local v1, "bUB":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->visitAnnotationExistInBothSets(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 285
    .end local v0    # "aUB":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "bUB":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    return-void
.end method
