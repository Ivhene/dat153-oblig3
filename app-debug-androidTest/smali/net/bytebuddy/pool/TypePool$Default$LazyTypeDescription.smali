.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyTypeDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyNestMemberList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentTokenList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;
    }
.end annotation


# static fields
.field private static final NO_TYPE:Ljava/lang/String;

.field private static final SUPER_CLASS_INDEX:I = -0x1


# instance fields
.field private final actualModifiers:I

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousType:Z

.field private final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringTypeName:Ljava/lang/String;

.field private final fieldTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;"
        }
    .end annotation
.end field

.field private final genericSignature:Ljava/lang/String;

.field private final interfaceTypeDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final methodTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final nestHost:Ljava/lang/String;

.field private final nestMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final permittedSubclasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final recordComponentTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

.field private final superClassDescriptor:Ljava/lang/String;

.field private final superTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final typeVariableAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeVariableBoundsAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2487
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/ClassFileVersion;)V
    .locals 18
    .param p1, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p2, "actualModifiers"    # I
    .param p3, "modifiers"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "superClassInternalName"    # Ljava/lang/String;
    .param p6, "interfaceInternalName"    # [Ljava/lang/String;
    .param p7, "genericSignature"    # Ljava/lang/String;
    .param p8, "typeContainment"    # Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;
    .param p9, "declaringTypeInternalName"    # Ljava/lang/String;
    .param p11, "anonymousType"    # Z
    .param p12, "nestHostInternalName"    # Ljava/lang/String;
    .param p22, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bytebuddy/ClassFileVersion;",
            ")V"
        }
    .end annotation

    .line 2652
    .local p10, "declaredTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p13, "nestMemberInternalNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p14, "superTypeAnnotationTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;>;>;>;"
    .local p15, "typeVariableAnnotationTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;>;>;>;"
    .local p16, "typeVariableBoundsAnnotationTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;>;>;>;>;"
    .local p17, "annotationTokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;>;"
    .local p18, "fieldTokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;>;"
    .local p19, "methodTokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;>;"
    .local p20, "recordComponentTokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;>;"
    .local p21, "permittedSubclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p9

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    .line 2653
    move-object/from16 v3, p1

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 2654
    and-int/lit8 v4, p2, -0x21

    iput v4, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    .line 2655
    const v4, -0x20021

    and-int v4, p3, v4

    iput v4, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->modifiers:I

    .line 2656
    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->name:Ljava/lang/String;

    .line 2657
    if-nez p5, :cond_0

    sget-object v4, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 2659
    :cond_0
    invoke-static/range {p5 .. p5}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    .line 2660
    move-object/from16 v4, p7

    iput-object v4, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->genericSignature:Ljava/lang/String;

    .line 2661
    sget-boolean v5, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->RAW_TYPES:Z

    if-eqz v5, :cond_1

    sget-object v5, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;

    goto :goto_1

    .line 2663
    :cond_1
    invoke-static/range {p7 .. p7}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfType;->extract(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    move-result-object v5

    :goto_1
    iput-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    .line 2664
    if-nez v1, :cond_2

    .line 2665
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    goto :goto_3

    .line 2667
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    .line 2668
    array-length v5, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    .line 2669
    .local v7, "internalName":Ljava/lang/String;
    iget-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    invoke-static {v7}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v9

    invoke-virtual {v9}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2668
    .end local v7    # "internalName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2672
    :cond_3
    :goto_3
    move-object/from16 v5, p8

    iput-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    .line 2673
    if-nez v2, :cond_4

    sget-object v6, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_4

    .line 2675
    :cond_4
    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    :goto_4
    iput-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaringTypeName:Ljava/lang/String;

    .line 2676
    move-object/from16 v6, p10

    iput-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaredTypes:Ljava/util/List;

    .line 2677
    move/from16 v7, p11

    iput-boolean v7, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    .line 2678
    if-nez p12, :cond_5

    sget-object v8, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_5

    .line 2680
    :cond_5
    invoke-static/range {p12 .. p12}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v8

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v8

    :goto_5
    iput-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestHost:Ljava/lang/String;

    .line 2681
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p13 .. p13}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestMembers:Ljava/util/List;

    .line 2682
    invoke-interface/range {p13 .. p13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2683
    .local v9, "nestMemberInternalName":Ljava/lang/String;
    iget-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestMembers:Ljava/util/List;

    invoke-static {v9}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v11

    invoke-virtual {v11}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    .end local v9    # "nestMemberInternalName":Ljava/lang/String;
    goto :goto_6

    .line 2685
    :cond_6
    move-object/from16 v8, p14

    iput-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superTypeAnnotationTokens:Ljava/util/Map;

    .line 2686
    move-object/from16 v9, p15

    iput-object v9, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    .line 2687
    move-object/from16 v10, p16

    iput-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    .line 2688
    move-object/from16 v11, p17

    iput-object v11, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->annotationTokens:Ljava/util/List;

    .line 2689
    move-object/from16 v12, p18

    iput-object v12, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->fieldTokens:Ljava/util/List;

    .line 2690
    move-object/from16 v13, p19

    iput-object v13, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->methodTokens:Ljava/util/List;

    .line 2691
    move-object/from16 v14, p20

    iput-object v14, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->recordComponentTokens:Ljava/util/List;

    .line 2692
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p21 .. p21}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    .line 2693
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2694
    .local v15, "internalName":Ljava/lang/String;
    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    invoke-static {v15}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2695
    .end local v15    # "internalName":Ljava/lang/String;
    move-object/from16 v2, p9

    move-object/from16 v1, v16

    goto :goto_7

    .line 2696
    :cond_7
    move-object/from16 v1, p22

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2697
    return-void
.end method

.method static synthetic access$1100(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    .line 2477
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->methodTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    .line 2477
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->recordComponentTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    .line 2477
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-object v0
.end method

.method static synthetic access$900(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    .line 2477
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->fieldTokens:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getActualModifiers(Z)I
    .locals 1
    .param p1, "superFlag"    # Z

    .line 2802
    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x20

    :cond_0
    return v0
.end method

.method public getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    .line 2870
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 2827
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->annotationTokens:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asList(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 2754
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 2761
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 2733
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaredTypes:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 2477
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 2786
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaringTypeName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 2788
    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 2786
    :goto_0
    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2

    .line 2719
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->getEnclosingMethod(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 2726
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1

    .line 2839
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->genericSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 2712
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superTypeAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveInterfaceTypes(Ljava/util/List;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 2795
    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2779
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 2809
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestHost:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 2811
    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 2809
    :goto_0
    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 2818
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestHost:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyNestMemberList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestMembers:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyNestMemberList;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 2820
    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    .line 2818
    :goto_0
    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 6

    .line 2768
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2769
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2770
    .local v1, "index":I
    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const-string v4, ""

    goto :goto_0

    .line 2772
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V

    .line 2770
    return-object v2
.end method

.method public getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 2865
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V

    return-object v0
.end method

.method public getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 2846
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 5

    .line 2703
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superTypeAnnotationTokens:Ljava/util/Map;

    .line 2705
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveSuperClass(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_1

    .line 2703
    :cond_1
    :goto_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 2834
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, p0, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveTypeVariables(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/Map;Ljava/util/Map;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    .line 2740
    iget-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    .line 2747
    iget-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecord()Z
    .locals 2

    .line 2853
    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->RECORD:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSealed()Z
    .locals 1

    .line 2858
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
