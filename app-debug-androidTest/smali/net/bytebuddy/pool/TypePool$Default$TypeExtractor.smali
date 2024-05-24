.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TypeExtractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;
    }
.end annotation


# static fields
.field private static final REAL_MODIFIER_MASK:I = 0xffff


# instance fields
.field private actualModifiers:I

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousType:Z

.field private classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private declaringTypeName:Ljava/lang/String;

.field private final fieldTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;"
        }
    .end annotation
.end field

.field private genericSignature:Ljava/lang/String;

.field private interfaceName:[Ljava/lang/String;

.field private internalName:Ljava/lang/String;

.field private final methodTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private nestHost:Ljava/lang/String;

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

.field private superClassName:Ljava/lang/String;

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

.field final synthetic this$0:Lnet/bytebuddy/pool/TypePool$Default;

.field private typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

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
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default;)V
    .locals 1
    .param p1, "this$0"    # Lnet/bytebuddy/pool/TypePool$Default;

    .line 7964
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    .line 7965
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(I)V

    .line 7966
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    .line 7967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    .line 7968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    .line 7969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    .line 7970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    .line 7971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    .line 7972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->recordComponentTokens:Ljava/util/List;

    .line 7973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    .line 7974
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    .line 7975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestMembers:Ljava/util/List;

    .line 7976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    .line 7977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->permittedSubclasses:Ljava/util/List;

    .line 7978
    return-void
.end method

.method static synthetic access$4100(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    .line 7848
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4200(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    .line 7848
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4300(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    .line 7848
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->recordComponentTokens:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 26

    .line 8098
    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    iget v3, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->actualModifiers:I

    iget v4, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    iget-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superClassName:Ljava/lang/String;

    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->interfaceName:[Ljava/lang/String;

    iget-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->genericSignature:Ljava/lang/String;

    iget-object v9, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaringTypeName:Ljava/lang/String;

    iget-object v11, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    iget-boolean v12, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    iget-object v13, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestHost:Ljava/lang/String;

    iget-object v14, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestMembers:Ljava/util/List;

    iget-object v15, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    move-object/from16 v19, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    move-object/from16 v20, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->recordComponentTokens:Ljava/util/List;

    move-object/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;-><init>(Lnet/bytebuddy/pool/TypePool;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/ClassFileVersion;)V

    return-object v24
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "classFileVersion"    # I
    .param p2, "modifiers"    # I
    .param p3, "internalName"    # Ljava/lang/String;
    .param p4, "genericSignature"    # Ljava/lang/String;
    .param p5, "superClassName"    # Ljava/lang/String;
    .param p6, "interfaceName"    # [Ljava/lang/String;

    .line 7988
    const v0, 0xffff

    and-int/2addr v0, p2

    iput v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    .line 7989
    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->actualModifiers:I

    .line 7990
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    .line 7991
    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->genericSignature:Ljava/lang/String;

    .line 7992
    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superClassName:Ljava/lang/String;

    .line 7993
    iput-object p6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->interfaceName:[Ljava/lang/String;

    .line 7994
    invoke-static {p1}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 7995
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 8056
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v2, v3, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 7
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "genericSignature"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/Object;

    .line 8061
    new-instance v6, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;

    const v0, 0xffff

    and-int v2, p1, v0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "internalName"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "modifiers"    # I

    .line 8008
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8009
    if-eqz p2, :cond_0

    .line 8010
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaringTypeName:Ljava/lang/String;

    .line 8011
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isSelfContained()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8012
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    .line 8015
    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isSelfContained()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    .line 8018
    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p4

    iput v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    goto :goto_0

    .line 8019
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8020
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8022
    :cond_3
    :goto_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 8
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "genericSignature"    # Ljava/lang/String;
    .param p5, "exceptionName"    # [Ljava/lang/String;

    .line 8066
    const-string v0, "<clinit>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8067
    invoke-static {}, Lnet/bytebuddy/pool/TypePool$Default;->access$3400()Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;

    const v1, 0xffff

    and-int v3, p1, v1

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 8066
    :goto_0
    return-object v0
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "nestHost"    # Ljava/lang/String;

    .line 8073
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestHost:Ljava/lang/String;

    .line 8074
    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 1
    .param p1, "nestMember"    # Ljava/lang/String;

    .line 8078
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8079
    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "methodDescriptor"    # Ljava/lang/String;

    .line 7999
    if-eqz p2, :cond_0

    const-string v0, "<clinit>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8000
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    goto :goto_0

    .line 8001
    :cond_0
    if-eqz p1, :cond_1

    .line 8002
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    .line 8004
    :cond_1
    :goto_0
    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .locals 1
    .param p1, "permittedSubclass"    # Ljava/lang/String;

    .line 8088
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->permittedSubclasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8089
    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 8083
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 8
    .param p1, "rawTypeReference"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 8027
    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    .line 8028
    .local v0, "typeReference":Lnet/bytebuddy/jar/asm/TypeReference;
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 8049
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type reference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8042
    :sswitch_0
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;

    .line 8044
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterBoundIndex()I

    move-result v5

    .line 8045
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result v6

    iget-object v7, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object v2, v1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;IILjava/util/Map;)V

    .line 8047
    .local v1, "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    goto :goto_0

    .line 8030
    .end local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    :sswitch_1
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    .line 8032
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getSuperTypeIndex()I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    .line 8034
    .restart local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    goto :goto_0

    .line 8036
    .end local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    :sswitch_2
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    .line 8038
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    .line 8040
    .restart local v1    # "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    nop

    .line 8051
    :goto_0
    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    new-instance v3, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v3, v4, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v2, p0, v1, v3}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method
