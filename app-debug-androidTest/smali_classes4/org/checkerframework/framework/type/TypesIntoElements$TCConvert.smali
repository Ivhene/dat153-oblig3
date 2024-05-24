.class Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "TypesIntoElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/TypesIntoElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TCConvert"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Lcom/sun/tools/javac/util/List<",
        "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
        ">;",
        "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
        ">;"
    }
.end annotation


# instance fields
.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .param p1, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 309
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    .line 310
    iput-object p1, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 311
    return-void
.end method

.method private directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 346
    .local v0, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 358
    .local v2, "am":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 359
    invoke-static {v2, p2, v3}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->createTypeCompoundFromAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    move-result-object v3

    .line 361
    .local v3, "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 363
    .end local v2    # "am":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "tc":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    goto :goto_0

    .line 364
    :cond_0
    return-object v0
.end method

.method private locateNestedTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "p"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 414
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 416
    .local v0, "depth":Lcom/sun/tools/javac/util/ListBuffer;, "Lcom/sun/tools/javac/util/ListBuffer<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 417
    .local v1, "encl":Lcom/sun/tools/javac/code/Type;
    :goto_0
    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_0

    .line 419
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_0

    .line 420
    sget-object v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 421
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 427
    :cond_1
    return-void
.end method


# virtual methods
.method public reduce(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 333
    .local p1, "r1":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    .local p2, "r2":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    if-nez p1, :cond_0

    .line 334
    return-object p2

    .line 336
    :cond_0
    if-nez p2, :cond_1

    .line 337
    return-object p1

    .line 339
    :cond_1
    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p1, Lcom/sun/tools/javac/util/List;

    check-cast p2, Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->reduce(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Ljava/lang/Iterable;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 1
    .param p2, "pos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 325
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    if-nez p1, :cond_0

    .line 326
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "pos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 315
    if-eqz p2, :cond_0

    .line 318
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 319
    .local v0, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    return-object v0

    .line 316
    .end local v0    # "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypesIntoElements: invalid usage, null pos with type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scan(Ljava/lang/Iterable;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 464
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 466
    .local v0, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->copyTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v1

    .line 467
    .local v1, "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    iget-object v2, p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    sget-object v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 469
    invoke-super {p0, p1, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->reduce(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 9
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->copyTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    .line 378
    .local v0, "oldpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->locateNestedTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)V

    .line 380
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 385
    .local v1, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, "arg":I
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 388
    .local v4, "ta":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->copyTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v5

    .line 389
    .local v5, "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    iget-object v6, p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    new-instance v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v8, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v7, v8, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V

    .line 390
    invoke-virtual {v6, v7}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 392
    invoke-virtual {p0, v4, v5, v1}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/sun/tools/javac/util/List;

    .line 393
    nop

    .end local v4    # "ta":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    add-int/lit8 v2, v2, 0x1

    .line 394
    goto :goto_0

    .line 397
    .end local v2    # "arg":I
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 398
    .local v2, "encl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_2

    .line 400
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_2

    .line 402
    invoke-virtual {p0, v2, v0, v1}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/sun/tools/javac/util/List;

    .line 404
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-object v1
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 8
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 439
    .local v0, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    const/4 v1, 0x0

    .line 440
    .local v1, "arg":I
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 441
    .local v3, "ta":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->copyTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v4

    .line 442
    .local v4, "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    iget-object v5, p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    new-instance v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v6, v7, v1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V

    .line 443
    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 445
    invoke-virtual {p0, v3, v4, v0}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 446
    nop

    .end local v3    # "ta":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    add-int/lit8 v1, v1, 0x1

    .line 447
    goto :goto_0

    .line 448
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-object v0
.end method

.method public bridge synthetic visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 532
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 476
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 477
    .local v0, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    return-object v0
.end method

.method public bridge synthetic visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 486
    .local v0, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypesIntoElement: encountered union type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "tapos"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition;",
            ")",
            "Lcom/sun/tools/javac/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 505
    .local v0, "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 506
    .local v1, "ext":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v1, :cond_1

    .line 507
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->copyTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v2

    .line 508
    .local v2, "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    iget-object v3, p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    sget-object v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 509
    invoke-virtual {p0, v1, v2, v0}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 512
    .end local v1    # "ext":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_1
    goto :goto_0

    .line 513
    .end local v0    # "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->directAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 514
    .restart local v0    # "res":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 515
    .local v1, "sup":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v1, :cond_3

    .line 516
    invoke-static {p2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->copyTAPosition(Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v2

    .line 517
    .restart local v2    # "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    iget-object v3, p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    sget-object v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 518
    invoke-virtual {p0, v1, v2, v0}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 521
    .end local v1    # "sup":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "newpos":Lcom/sun/tools/javac/code/TypeAnnotationPosition;
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p2, Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypesIntoElements$TCConvert;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method
