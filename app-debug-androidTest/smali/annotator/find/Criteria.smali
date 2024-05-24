.class public final Lannotator/find/Criteria;
.super Ljava/lang/Object;
.source "Criteria.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static dbug:Lscenelib/annotations/io/DebugWriter;


# instance fields
.field private final criteria:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lannotator/find/Criterion$Kind;",
            "Lannotator/find/Criterion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    nop

    .line 27
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    sput-object v0, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static final astPath(Lscenelib/annotations/io/ASTPath;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 544
    new-instance v0, Lannotator/find/ASTPathCriterion;

    invoke-direct {v0, p0}, Lannotator/find/ASTPathCriterion;-><init>(Lscenelib/annotations/io/ASTPath;)V

    return-object v0
.end method

.method public static final atBoundLocation(Lscenelib/annotations/el/BoundLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "loc"    # Lscenelib/annotations/el/BoundLocation;

    .line 528
    new-instance v0, Lannotator/find/BoundLocationCriterion;

    invoke-direct {v0, p0}, Lannotator/find/BoundLocationCriterion;-><init>(Lscenelib/annotations/el/BoundLocation;)V

    return-object v0
.end method

.method public static final atExtImplsLocation(Ljava/lang/String;Lscenelib/annotations/el/TypeIndexLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/TypeIndexLocation;

    .line 532
    new-instance v0, Lannotator/find/ExtImplsLocationCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/ExtImplsLocationCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/TypeIndexLocation;)V

    return-object v0
.end method

.method public static final atLocation()Lannotator/find/Criterion;
    .locals 1

    .line 446
    new-instance v0, Lannotator/find/GenericArrayLocationCriterion;

    invoke-direct {v0}, Lannotator/find/GenericArrayLocationCriterion;-><init>()V

    return-object v0
.end method

.method public static final atLocation(Lscenelib/annotations/el/InnerTypeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "loc"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 450
    new-instance v0, Lannotator/find/GenericArrayLocationCriterion;

    invoke-direct {v0, p0}, Lannotator/find/GenericArrayLocationCriterion;-><init>(Lscenelib/annotations/el/InnerTypeLocation;)V

    return-object v0
.end method

.method public static final cast(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 500
    new-instance v0, Lannotator/find/CastCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/CastCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V

    return-object v0
.end method

.method public static final classBound(Ljava/lang/String;Lscenelib/annotations/el/BoundLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "boundLoc"    # Lscenelib/annotations/el/BoundLocation;

    .line 540
    new-instance v0, Lannotator/find/ClassBoundCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/ClassBoundCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/BoundLocation;)V

    return-object v0
.end method

.method public static final enclosedBy(Lcom/sun/source/tree/Tree$Kind;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 394
    new-instance v0, Lannotator/find/EnclosedByCriterion;

    invoke-direct {v0, p0}, Lannotator/find/EnclosedByCriterion;-><init>(Lcom/sun/source/tree/Tree$Kind;)V

    return-object v0
.end method

.method public static final field(Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "varName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    new-instance v0, Lannotator/find/FieldCriterion;

    invoke-direct {v0, p0}, Lannotator/find/FieldCriterion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final field(Ljava/lang/String;Z)Lannotator/find/Criterion;
    .locals 1
    .param p0, "varName"    # Ljava/lang/String;
    .param p1, "isOnDeclaration"    # Z

    .line 459
    new-instance v0, Lannotator/find/FieldCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/FieldCriterion;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static final inClass(Ljava/lang/String;Z)Lannotator/find/Criterion;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "exact"    # Z

    .line 417
    new-instance v0, Lannotator/find/InClassCriterion;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lannotator/find/InClassCriterion;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static final inFieldInit(Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "varName"    # Ljava/lang/String;

    .line 471
    new-instance v0, Lannotator/find/InFieldInitCriterion;

    invoke-direct {v0, p0}, Lannotator/find/InFieldInitCriterion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final inInstanceInit(I)Lannotator/find/Criterion;
    .locals 2
    .param p0, "blockID"    # I

    .line 467
    new-instance v0, Lannotator/find/InInitBlockCriterion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lannotator/find/InInitBlockCriterion;-><init>(IZ)V

    return-object v0
.end method

.method public static final inMethod(Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 428
    new-instance v0, Lannotator/find/InMethodCriterion;

    invoke-direct {v0, p0}, Lannotator/find/InMethodCriterion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final inPackage(Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 405
    new-instance v0, Lannotator/find/InPackageCriterion;

    invoke-direct {v0, p0}, Lannotator/find/InPackageCriterion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final inStaticInit(I)Lannotator/find/Criterion;
    .locals 2
    .param p0, "blockID"    # I

    .line 463
    new-instance v0, Lannotator/find/InInitBlockCriterion;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lannotator/find/InInitBlockCriterion;-><init>(IZ)V

    return-object v0
.end method

.method public static final instanceOf(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 508
    new-instance v0, Lannotator/find/InstanceOfCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/InstanceOfCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V

    return-object v0
.end method

.method public static final is(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p1, "name"    # Ljava/lang/String;

    .line 383
    new-instance v0, Lannotator/find/IsCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/IsCriterion;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final isSigMethod(Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .line 483
    new-instance v0, Lannotator/find/IsSigMethodCriterion;

    invoke-direct {v0, p0}, Lannotator/find/IsSigMethodCriterion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final lambda(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 524
    new-instance v0, Lannotator/find/LambdaCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/LambdaCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V

    return-object v0
.end method

.method public static final local(Ljava/lang/String;Lscenelib/annotations/el/LocalLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/LocalLocation;

    .line 496
    new-instance v0, Lannotator/find/LocalVariableCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/LocalVariableCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/LocalLocation;)V

    return-object v0
.end method

.method public static memberReference(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 512
    new-instance v0, Lannotator/find/MemberReferenceCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/MemberReferenceCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V

    return-object v0
.end method

.method public static final methodBound(Ljava/lang/String;Lscenelib/annotations/el/BoundLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "boundLoc"    # Lscenelib/annotations/el/BoundLocation;

    .line 536
    new-instance v0, Lannotator/find/MethodBoundCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/MethodBoundCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/BoundLocation;)V

    return-object v0
.end method

.method public static methodCall(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 516
    new-instance v0, Lannotator/find/CallCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/CallCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V

    return-object v0
.end method

.method public static final newObject(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 504
    new-instance v0, Lannotator/find/NewCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/NewCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V

    return-object v0
.end method

.method public static final notInMethod()Lannotator/find/Criterion;
    .locals 1

    .line 438
    new-instance v0, Lannotator/find/NotInMethodCriterion;

    invoke-direct {v0}, Lannotator/find/NotInMethodCriterion;-><init>()V

    return-object v0
.end method

.method public static final packageDecl(Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 442
    new-instance v0, Lannotator/find/PackageCriterion;

    invoke-direct {v0, p0}, Lannotator/find/PackageCriterion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final param(Ljava/lang/String;Ljava/lang/Integer;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/lang/Integer;

    .line 488
    new-instance v0, Lannotator/find/ParamCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/ParamCriterion;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static final receiver(Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .line 475
    new-instance v0, Lannotator/find/ReceiverCriterion;

    invoke-direct {v0, p0}, Lannotator/find/ReceiverCriterion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final returnType(Ljava/lang/String;Ljava/lang/String;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 479
    new-instance v0, Lannotator/find/ReturnTypeCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/ReturnTypeCriterion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final typeArgument(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)Lannotator/find/Criterion;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 520
    new-instance v0, Lannotator/find/TypeArgumentCriterion;

    invoke-direct {v0, p0, p1}, Lannotator/find/TypeArgumentCriterion;-><init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V

    return-object v0
.end method


# virtual methods
.method public add(Lannotator/find/Criterion;)V
    .locals 2
    .param p1, "c"    # Lannotator/find/Criterion;

    .line 45
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {p1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public getASTPath()Lscenelib/annotations/io/ASTPath;
    .locals 4

    .line 239
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 240
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->AST_PATH:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 241
    move-object v0, v1

    check-cast v0, Lannotator/find/ASTPathCriterion;

    iget-object v0, v0, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    return-object v0

    .line 243
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCastRelativeLocation()Lscenelib/annotations/el/RelativeLocation;
    .locals 5

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Lscenelib/annotations/el/RelativeLocation;
    iget-object v1, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lannotator/find/Criterion;

    .line 311
    .local v2, "c":Lannotator/find/Criterion;
    invoke-interface {v2}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v3

    sget-object v4, Lannotator/find/Criterion$Kind;->CAST:Lannotator/find/Criterion$Kind;

    if-ne v3, v4, :cond_0

    .line 312
    move-object v3, v2

    check-cast v3, Lannotator/find/CastCriterion;

    invoke-virtual {v3}, Lannotator/find/CastCriterion;->getLocation()Lscenelib/annotations/el/RelativeLocation;

    move-result-object v0

    .line 314
    .end local v2    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 315
    :cond_1
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 4

    .line 254
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 255
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->IN_CLASS:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 256
    move-object v0, v1

    check-cast v0, Lannotator/find/InClassCriterion;

    iget-object v0, v0, Lannotator/find/InClassCriterion;->className:Ljava/lang/String;

    return-object v0

    .line 258
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 4

    .line 284
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 285
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->FIELD:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 286
    move-object v0, v1

    check-cast v0, Lannotator/find/FieldCriterion;

    iget-object v0, v0, Lannotator/find/FieldCriterion;->varName:Ljava/lang/String;

    return-object v0

    .line 288
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;
    .locals 4

    .line 297
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 298
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->GENERIC_ARRAY_LOCATION:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 299
    move-object v0, v1

    check-cast v0, Lannotator/find/GenericArrayLocationCriterion;

    return-object v0

    .line 301
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInClass()Lannotator/find/InClassCriterion;
    .locals 5

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "result":Lannotator/find/InClassCriterion;
    iget-object v1, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lannotator/find/Criterion;

    .line 326
    .local v2, "c":Lannotator/find/Criterion;
    invoke-interface {v2}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v3

    sget-object v4, Lannotator/find/Criterion$Kind;->IN_CLASS:Lannotator/find/Criterion$Kind;

    if-ne v3, v4, :cond_0

    .line 327
    move-object v0, v2

    check-cast v0, Lannotator/find/InClassCriterion;

    .line 329
    .end local v2    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 330
    :cond_1
    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 4

    .line 269
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 270
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->IN_METHOD:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 271
    move-object v0, v1

    check-cast v0, Lannotator/find/InMethodCriterion;

    iget-object v0, v0, Lannotator/find/InMethodCriterion;->name:Ljava/lang/String;

    return-object v0

    .line 273
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOnFieldDeclaration()Z
    .locals 4

    .line 211
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 212
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->FIELD:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Lannotator/find/FieldCriterion;

    iget-boolean v2, v2, Lannotator/find/FieldCriterion;->isDeclaration:Z

    if-eqz v2, :cond_0

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnInstanceof()Z
    .locals 4

    .line 161
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 162
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->INSTANCE_OF:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 163
    const/4 v0, 0x1

    return v0

    .line 165
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnLocalVariable()Z
    .locals 4

    .line 147
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 148
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->LOCAL_VARIABLE:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 149
    const/4 v0, 0x1

    return v0

    .line 151
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodname"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 198
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->IN_METHOD:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 199
    move-object v2, v1

    check-cast v2, Lannotator/find/InMethodCriterion;

    iget-object v2, v2, Lannotator/find/InMethodCriterion;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v0, 0x1

    return v0

    .line 203
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnNew()Z
    .locals 4

    .line 173
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 174
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->NEW:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnPackage()Z
    .locals 4

    .line 117
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 118
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->PACKAGE:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 119
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnReceiver()Z
    .locals 4

    .line 102
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 103
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->RECEIVER:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnReturnType()Z
    .locals 4

    .line 132
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 133
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Criterion$Kind;->RETURN_TYPE:Lannotator/find/Criterion$Kind;

    if-ne v2, v3, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnTypeDeclarationExtendsClause()Z
    .locals 5

    .line 185
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 186
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v3

    sget-object v4, Lannotator/find/Criterion$Kind;->EXTIMPLS_LOCATION:Lannotator/find/Criterion$Kind;

    if-ne v3, v4, :cond_1

    .line 187
    move-object v0, v1

    check-cast v0, Lannotator/find/ExtImplsLocationCriterion;

    invoke-virtual {v0}, Lannotator/find/ExtImplsLocationCriterion;->getIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 189
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_1
    goto :goto_0

    .line 190
    :cond_2
    return v2
.end method

.method public isOnVariableDeclaration()Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lannotator/find/Criteria;->isOnLocalVariable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lannotator/find/Criteria;->isOnFieldDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 5
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 85
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 86
    .local v1, "c":Lannotator/find/Criterion;
    invoke-interface {v1, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    sget-object v0, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v2, "UNsatisfied criterion: %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v3, "satisfied criterion: %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .end local v1    # "c":Lannotator/find/Criterion;
    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 6
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 59
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 60
    return v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-ne v1, p2, :cond_3

    .line 63
    iget-object v1, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lannotator/find/Criterion;

    .line 64
    .local v2, "c":Lannotator/find/Criterion;
    invoke-interface {v2, p1, p2}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1}, Lannotator/Main;->leafString(Lcom/sun/source/util/TreePath;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 65
    const-string v4, "UNsatisfied criterion of type %s [%s]:%n    leaf=%s%n"

    invoke-virtual {v1, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return v0

    .line 69
    :cond_1
    sget-object v3, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p1}, Lannotator/Main;->leafString(Lcom/sun/source/util/TreePath;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 69
    const-string v5, "satisfied criterion of type %s [%s]:%n    leaf=%s%n"

    invoke-virtual {v3, v5, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .end local v2    # "c":Lannotator/find/Criterion;
    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onBoundZero()Z
    .locals 6

    .line 339
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Criterion;

    .line 340
    .local v1, "c":Lannotator/find/Criterion;
    sget-object v2, Lannotator/find/Criteria$1;->$SwitchMap$annotator$find$Criterion$Kind:[I

    invoke-interface {v1}, Lannotator/find/Criterion;->getKind()Lannotator/find/Criterion$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lannotator/find/Criterion$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 348
    :pswitch_0
    move-object v2, v1

    check-cast v2, Lannotator/find/ASTPathCriterion;

    iget-object v2, v2, Lannotator/find/ASTPathCriterion;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 349
    .local v2, "astPath":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 350
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v4

    .line 351
    .local v4, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    const-string v5, "bound"

    invoke-virtual {v4, v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    invoke-virtual {v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v5

    if-nez v5, :cond_0

    .line 353
    return v3

    .line 355
    .end local v4    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_0
    goto :goto_1

    .line 345
    .end local v2    # "astPath":Lscenelib/annotations/io/ASTPath;
    :pswitch_1
    move-object v2, v1

    check-cast v2, Lannotator/find/MethodBoundCriterion;

    iget-object v2, v2, Lannotator/find/MethodBoundCriterion;->boundLoc:Lscenelib/annotations/el/BoundLocation;

    iget v2, v2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    if-eqz v2, :cond_1

    goto :goto_1

    .line 346
    :cond_1
    return v3

    .line 342
    :pswitch_2
    move-object v2, v1

    check-cast v2, Lannotator/find/ClassBoundCriterion;

    iget-object v2, v2, Lannotator/find/ClassBoundCriterion;->boundLoc:Lscenelib/annotations/el/BoundLocation;

    iget v2, v2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    if-eqz v2, :cond_2

    goto :goto_1

    .line 343
    :cond_2
    return v3

    .line 360
    .end local v1    # "c":Lannotator/find/Criterion;
    :cond_3
    :goto_1
    goto :goto_0

    .line 361
    :cond_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lannotator/find/Criteria;->criteria:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
