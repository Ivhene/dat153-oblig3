.class public final enum Lnet/bytebuddy/utility/JavaType;
.super Ljava/lang/Enum;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaType;

.field public static final enum ACCESS_CONTROL_CONTEXT:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CALL_SITE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CLASS_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTABLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTANT_BOOTSTRAPS:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum DIRECT_METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum DYNAMIC_CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLES:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_TYPE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum MODULE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum OBJECT_METHODS:Lnet/bytebuddy/utility/JavaType;

.field public static final enum PARAMETER:Lnet/bytebuddy/utility/JavaType;

.field public static final enum RECORD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR_OF_FIELD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR_OF_METHOD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;


# instance fields
.field private transient synthetic available:Z

.field private transient synthetic loaded:Ljava/lang/Class;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    .line 32
    nop

    .line 37
    new-instance v23, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v7, v23

    const-string v1, "CONSTABLE"

    const/4 v2, 0x0

    const-string v3, "java.lang.constant.Constable"

    const/16 v4, 0x601

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v15, 0x0

    new-array v6, v15, [Lnet/bytebuddy/description/type/TypeDefinition;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v23, Lnet/bytebuddy/utility/JavaType;->CONSTABLE:Lnet/bytebuddy/utility/JavaType;

    .line 42
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object v8, v0

    const-string v17, "TYPE_DESCRIPTOR"

    const/16 v18, 0x1

    const-string v19, "java.lang.invoke.TypeDescriptor"

    const/16 v20, 0x601

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v1, v15, [Lnet/bytebuddy/description/type/TypeDefinition;

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR:Lnet/bytebuddy/utility/JavaType;

    .line 47
    new-instance v1, Lnet/bytebuddy/utility/JavaType;

    move-object v9, v1

    const-string v25, "TYPE_DESCRIPTOR_OF_FIELD"

    const/16 v26, 0x2

    const-string v27, "java.lang.invoke.TypeDescriptor$OfField"

    const/16 v28, 0x601

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v2, 0x1

    new-array v3, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 50
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    aput-object v4, v3, v15

    move-object/from16 v24, v1

    move-object/from16 v30, v3

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v1, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR_OF_FIELD:Lnet/bytebuddy/utility/JavaType;

    .line 55
    new-instance v3, Lnet/bytebuddy/utility/JavaType;

    move-object v10, v3

    const-string v17, "TYPE_DESCRIPTOR_OF_METHOD"

    const/16 v18, 0x3

    const-string v19, "java.lang.invoke.TypeDescriptor$OfMethod"

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v4, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 58
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    aput-object v0, v4, v15

    move-object/from16 v16, v3

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v3, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR_OF_METHOD:Lnet/bytebuddy/utility/JavaType;

    .line 63
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object v11, v0

    const-string v25, "CONSTANT_DESCRIPTION"

    const/16 v26, 0x4

    const-string v27, "java.lang.constant.ConstantDesc"

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v4, v15, [Lnet/bytebuddy/description/type/TypeDefinition;

    move-object/from16 v24, v0

    move-object/from16 v30, v4

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 68
    new-instance v4, Lnet/bytebuddy/utility/JavaType;

    move-object v12, v4

    const-string v17, "DYNAMIC_CONSTANT_DESCRIPTION"

    const/16 v18, 0x5

    const-string v19, "java.lang.constant.DynamicConstantDesc"

    const/16 v20, 0x401

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v5, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 71
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v5, v15

    move-object/from16 v16, v4

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v4, Lnet/bytebuddy/utility/JavaType;->DYNAMIC_CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 76
    new-instance v4, Lnet/bytebuddy/utility/JavaType;

    move-object v13, v4

    const-string v25, "CLASS_DESCRIPTION"

    const/16 v26, 0x6

    const-string v27, "java.lang.constant.ClassDesc"

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v5, 0x2

    new-array v6, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 79
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    aput-object v14, v6, v15

    .line 80
    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    aput-object v1, v6, v2

    move-object/from16 v24, v4

    move-object/from16 v30, v6

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v4, Lnet/bytebuddy/utility/JavaType;->CLASS_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 85
    new-instance v1, Lnet/bytebuddy/utility/JavaType;

    move-object v14, v1

    const-string v17, "METHOD_TYPE_DESCRIPTION"

    const/16 v18, 0x7

    const-string v19, "java.lang.constant.MethodTypeDesc"

    const/16 v20, 0x601

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v4, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 88
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v4, v15

    .line 89
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v4, v2

    move-object/from16 v16, v1

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 94
    new-instance v1, Lnet/bytebuddy/utility/JavaType;

    move v4, v15

    move-object v15, v1

    const-string v25, "METHOD_HANDLE_DESCRIPTION"

    const/16 v26, 0x8

    const-string v27, "java.lang.constant.MethodHandleDesc"

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v6, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 97
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    aput-object v0, v6, v4

    move-object/from16 v24, v1

    move-object/from16 v30, v6

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 102
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v16, v0

    const-string v31, "DIRECT_METHOD_HANDLE_DESCRIPTION"

    const/16 v32, 0x9

    const-string v33, "java.lang.constant.DirectMethodHandleDesc"

    const/16 v34, 0x601

    sget-object v35, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v6, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 105
    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    aput-object v1, v6, v4

    move-object/from16 v30, v0

    move-object/from16 v36, v6

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->DIRECT_METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 110
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v17, v0

    const-string v25, "METHOD_HANDLE"

    const/16 v26, 0xa

    const-string v27, "java.lang.invoke.MethodHandle"

    const/16 v28, 0x401

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v1, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual/range {v23 .. v23}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v1, v4

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 115
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v18, v0

    const-string v31, "METHOD_HANDLES"

    const/16 v32, 0xb

    const-string v33, "java.lang.invoke.MethodHandles"

    const/16 v34, 0x1

    const-class v35, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES:Lnet/bytebuddy/utility/JavaType;

    .line 120
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v19, v0

    const-string v25, "METHOD_TYPE"

    const/16 v26, 0xc

    const-string v27, "java.lang.invoke.MethodType"

    const/16 v28, 0x11

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 123
    invoke-virtual/range {v23 .. v23}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v1, v4

    .line 124
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    aput-object v3, v1, v2

    const-class v3, Ljava/io/Serializable;

    .line 125
    invoke-static {v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    aput-object v3, v1, v5

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 130
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v20, v0

    const-string v31, "METHOD_HANDLES_LOOKUP"

    const/16 v32, 0xd

    const-string v33, "java.lang.invoke.MethodHandles$Lookup"

    const/16 v34, 0x19

    const-class v35, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    .line 135
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v21, v0

    const-string v25, "CALL_SITE"

    const/16 v26, 0xe

    const-string v27, "java.lang.invoke.CallSite"

    const/16 v28, 0x401

    const-class v29, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    .line 140
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v22, v0

    const-string v31, "VAR_HANDLE"

    const/16 v32, 0xf

    const-string v33, "java.lang.invoke.VarHandle"

    const/16 v34, 0x401

    sget-object v35, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-array v1, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual/range {v23 .. v23}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    aput-object v3, v1, v4

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 145
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v23, v0

    const-string v25, "PARAMETER"

    const/16 v26, 0x10

    const-string v27, "java.lang.reflect.Parameter"

    const/16 v28, 0x11

    const-class v29, Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/reflect/AnnotatedElement;

    aput-object v3, v1, v4

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->PARAMETER:Lnet/bytebuddy/utility/JavaType;

    .line 150
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v24, v0

    const-string v31, "EXECUTABLE"

    const/16 v32, 0x11

    const-string v33, "java.lang.reflect.Executable"

    const-class v35, Ljava/lang/reflect/AccessibleObject;

    new-array v1, v5, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/reflect/Member;

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/reflect/GenericDeclaration;

    aput-object v3, v1, v2

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

    .line 155
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v25, v0

    const-string v37, "MODULE"

    const/16 v38, 0x12

    const-string v39, "java.lang.Module"

    const/16 v40, 0x11

    const-class v41, Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/reflect/AnnotatedElement;

    aput-object v2, v1, v4

    move-object/from16 v36, v0

    move-object/from16 v42, v1

    invoke-direct/range {v36 .. v42}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->MODULE:Lnet/bytebuddy/utility/JavaType;

    .line 160
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v26, v0

    const-string v28, "CONSTANT_BOOTSTRAPS"

    const/16 v29, 0x13

    const-string v30, "java.lang.invoke.ConstantBootstraps"

    const/16 v31, 0x11

    const-class v32, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v27, v0

    move-object/from16 v33, v1

    invoke-direct/range {v27 .. v33}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->CONSTANT_BOOTSTRAPS:Lnet/bytebuddy/utility/JavaType;

    .line 165
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v27, v0

    const-string v34, "RECORD"

    const/16 v35, 0x14

    const-string v36, "java.lang.Record"

    const/16 v37, 0x401

    const-class v38, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v33, v0

    move-object/from16 v39, v1

    invoke-direct/range {v33 .. v39}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->RECORD:Lnet/bytebuddy/utility/JavaType;

    .line 170
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v28, v0

    const-string v40, "OBJECT_METHODS"

    const/16 v41, 0x15

    const-string v42, "java.lang.runtime.ObjectMethods"

    const/16 v43, 0x1

    const-class v44, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v39, v0

    move-object/from16 v45, v1

    invoke-direct/range {v39 .. v45}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->OBJECT_METHODS:Lnet/bytebuddy/utility/JavaType;

    .line 175
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v29, v0

    const-string v31, "ACCESS_CONTROL_CONTEXT"

    const/16 v32, 0x16

    const-string v33, "java.security.AccessControlContext"

    const/16 v34, 0x11

    sget-object v35, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v1, v4, [Lnet/bytebuddy/description/type/TypeDefinition;

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->ACCESS_CONTROL_CONTEXT:Lnet/bytebuddy/utility/JavaType;

    .line 32
    filled-new-array/range {v7 .. v29}, [Lnet/bytebuddy/utility/JavaType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 8
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "modifiers"    # I
    .param p5, "superClass"    # Ljava/lang/reflect/Type;
    .param p6, "anInterface"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 191
    if-nez p5, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v6, v0

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {p5}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    move-object v6, v0

    :goto_0
    new-instance v7, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v7, p6}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    .line 191
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V

    .line 194
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 8
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "modifiers"    # I
    .param p5, "superClass"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .param p6, "anInterface"    # [Lnet/bytebuddy/description/type/TypeDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "[",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    .line 205
    if-nez p5, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v6, v0

    goto :goto_0

    .line 207
    :cond_0
    invoke-interface {p5}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    move-object v6, v0

    :goto_0
    new-instance v7, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v7, p6}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    .line 205
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V

    .line 208
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V
    .locals 0
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "modifiers"    # I
    .param p5, "superClass"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p6, "interfaces"    # Lnet/bytebuddy/description/type/TypeList$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/type/TypeList$Generic;",
            ")V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    new-instance p1, Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;

    invoke-direct {p1, p3, p4, p5, p6}, Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 220
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lnet/bytebuddy/utility/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaType;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaType;
    .locals 1

    .line 32
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaType;

    return-object v0
.end method


# virtual methods
.method public getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 229
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "available"
    .end annotation

    .line 261
    iget-boolean v0, p0, Lnet/bytebuddy/utility/JavaType;->available:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/utility/JavaType;
    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    move v1, v2

    goto :goto_0

    .line 263
    :catch_0
    move-exception v3

    .line 264
    .local v3, "ignored":Ljava/lang/ClassNotFoundException;
    nop

    .end local v0    # "this":Lnet/bytebuddy/utility/JavaType;
    .end local v3    # "ignored":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lnet/bytebuddy/utility/JavaType;->available:Z

    move v2, v1

    :cond_1
    return v2
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;

    .line 275
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    return v1

    .line 279
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method public load()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "loaded"
    .end annotation

    .line 240
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->loaded:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/utility/JavaType;
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .end local v0    # "this":Lnet/bytebuddy/utility/JavaType;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/utility/JavaType;->loaded:Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/utility/JavaType;->loaded:Ljava/lang/Class;

    :goto_1
    return-object v0
.end method

.method public loadAsDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method
