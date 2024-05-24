.class public Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;
.source "GeneratorAdapter.java"


# static fields
.field public static final ADD:I = 0x60

.field public static final AND:I = 0x7e

.field private static final BOOLEAN_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final BOOLEAN_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

.field private static final BYTE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final CHARACTER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final CHAR_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

.field public static final DIV:I = 0x6c

.field private static final DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

.field public static final EQ:I = 0x99

.field private static final FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

.field public static final GE:I = 0x9c

.field public static final GT:I = 0x9d

.field private static final INTEGER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

.field public static final LE:I = 0x9e

.field private static final LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

.field public static final LT:I = 0x9b

.field public static final MUL:I = 0x68

.field public static final NE:I = 0x9a

.field public static final NEG:I = 0x74

.field private static final NUMBER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field private static final OBJECT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field public static final OR:I = 0x80

.field public static final REM:I = 0x70

.field public static final SHL:I = 0x78

.field private static final SHORT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

.field public static final SHR:I = 0x7a

.field public static final SUB:I = 0x64

.field public static final USHR:I = 0x7c

.field public static final XOR:I = 0x82


# instance fields
.field private final access:I

.field private final argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

.field private final localTypes:Ljava/util/List;

.field private final returnType:Lorg/checkerframework/org/objectweb/asmx/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-string v0, "Ljava/lang/Byte;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->BYTE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 86
    const-string v0, "Ljava/lang/Boolean;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 88
    const-string v0, "Ljava/lang/Short;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->SHORT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 90
    const-string v0, "Ljava/lang/Character;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->CHARACTER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 92
    const-string v0, "Ljava/lang/Integer;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->INTEGER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 94
    const-string v0, "Ljava/lang/Float;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 96
    const-string v0, "Ljava/lang/Long;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 98
    const-string v0, "Ljava/lang/Double;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 100
    const-string v0, "Ljava/lang/Number;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->NUMBER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 102
    const-string v0, "Ljava/lang/Object;"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 104
    const-string v0, "boolean booleanValue()"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->BOOLEAN_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 106
    const-string v0, "char charValue()"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->CHAR_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 108
    const-string v0, "int intValue()"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 110
    const-string v0, "float floatValue()"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 112
    const-string v0, "long longValue()"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 114
    const-string v0, "double doubleValue()"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/objectweb/asmx/commons/Method;Ljava/lang/String;[Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 6
    .param p1, "access"    # I
    .param p2, "method"    # Lorg/checkerframework/org/objectweb/asmx/commons/Method;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "exceptions"    # [Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p5, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 284
    nop

    .line 285
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->getInternalNames([Lorg/checkerframework/org/objectweb/asmx/Type;)[Ljava/lang/String;

    move-result-object v5

    .line 284
    move-object v0, p5

    move v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;-><init>(ILorg/checkerframework/org/objectweb/asmx/commons/Method;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 289
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/objectweb/asmx/commons/Method;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 1
    .param p1, "access"    # I
    .param p2, "method"    # Lorg/checkerframework/org/objectweb/asmx/commons/Method;
    .param p3, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 259
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;-><init>(ILjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 260
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->access:I

    .line 261
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getReturnType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->returnType:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 262
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getArgumentTypes()[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    .line 264
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0, p2, p4, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;-><init>(ILjava/lang/String;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 241
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->access:I

    .line 242
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->returnType:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 243
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    .line 245
    return-void
.end method

.method private fieldInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "ownerType"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1169
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 1170
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-virtual {p4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-interface {v0, p1, v1, p3, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method private getArgIndex(I)I
    .locals 3
    .param p1, "arg"    # I

    .line 418
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->access:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    .local v0, "index":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 420
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static getInternalNames([Lorg/checkerframework/org/objectweb/asmx/Type;)[Ljava/lang/String;
    .locals 3
    .param p0, "types"    # [Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 298
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 302
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 303
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private invokeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p3, "method"    # Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 1240
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1241
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1242
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 1243
    .local v0, "owner":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 1245
    invoke-virtual {p3}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1246
    invoke-virtual {p3}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 1243
    invoke-interface {v1, p1, v0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return-void
.end method

.method private loadInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "index"    # I

    .line 432
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x15

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getOpcode(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 433
    return-void
.end method

.method private setLocalType(ILorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 3
    .param p1, "local"    # I
    .param p2, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 549
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->firstLocal:I

    sub-int v0, p1, v0

    .line 550
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_0

    .line 551
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 553
    return-void
.end method

.method private storeInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "index"    # I

    .line 443
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getOpcode(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 444
    return-void
.end method

.method private typeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1301
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1302
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .local v0, "desc":Ljava/lang/String;
    goto :goto_0

    .line 1304
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    .line 1306
    .restart local v0    # "desc":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1307
    return-void
.end method


# virtual methods
.method public arrayLength()V
    .locals 2

    .line 1365
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xbe

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 1366
    return-void
.end method

.method public arrayLoad(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 607
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getOpcode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 608
    return-void
.end method

.method public arrayStore(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 616
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x4f

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getOpcode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 617
    return-void
.end method

.method public box(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 811
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 814
    :cond_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->VOID_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p1, v0, :cond_1

    .line 815
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    goto :goto_2

    .line 817
    :cond_1
    move-object v0, p1

    .line 818
    .local v0, "boxed":Lorg/checkerframework/org/objectweb/asmx/Type;
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 841
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    goto :goto_0

    .line 838
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 839
    goto :goto_0

    .line 835
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 836
    goto :goto_0

    .line 832
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->INTEGER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 833
    goto :goto_0

    .line 826
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->SHORT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 827
    goto :goto_0

    .line 820
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->BYTE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 821
    goto :goto_0

    .line 829
    :pswitch_6
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->CHARACTER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 830
    goto :goto_0

    .line 823
    :pswitch_7
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 824
    nop

    .line 844
    :goto_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->newInstance(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 845
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 847
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dupX2()V

    .line 848
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dupX2()V

    .line 849
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->pop()V

    goto :goto_1

    .line 852
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dupX1()V

    .line 853
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->swap()V

    .line 855
    :goto_1
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/Type;->VOID_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/checkerframework/org/objectweb/asmx/Type;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "<init>"

    invoke-direct {v1, v4, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;-><init>(Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;[Lorg/checkerframework/org/objectweb/asmx/Type;)V

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->invokeConstructor(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V

    .line 859
    .end local v0    # "boxed":Lorg/checkerframework/org/objectweb/asmx/Type;
    :goto_2
    return-void

    .line 812
    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cast(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "from"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "to"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 754
    if-eq p1, p2, :cond_e

    .line 755
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p1, v0, :cond_2

    .line 756
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_0

    .line 757
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x90

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    .line 758
    :cond_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_1

    .line 759
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x8f

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x8e

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 762
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->INT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->cast(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)V

    goto/16 :goto_0

    .line 764
    :cond_2
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p1, v0, :cond_5

    .line 765
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_3

    .line 766
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x8d

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    .line 767
    :cond_3
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_4

    .line 768
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x8c

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    .line 770
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x8b

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 771
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->INT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->cast(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)V

    goto/16 :goto_0

    .line 773
    :cond_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p1, v0, :cond_8

    .line 774
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_6

    .line 775
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x8a

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 776
    :cond_6
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_7

    .line 777
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x89

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 779
    :cond_7
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x88

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 780
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->INT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->cast(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)V

    goto :goto_0

    .line 783
    :cond_8
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->BYTE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_9

    .line 784
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x91

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 785
    :cond_9
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->CHAR_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_a

    .line 786
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x92

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 787
    :cond_a
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_b

    .line 788
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x87

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 789
    :cond_b
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_c

    .line 790
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x86

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 791
    :cond_c
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_d

    .line 792
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x85

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 793
    :cond_d
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->SHORT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne p2, v0, :cond_e

    .line 794
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x93

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 798
    :cond_e
    :goto_0
    return-void
.end method

.method public catchException(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 3
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "exception"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1452
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mark()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v1

    invoke-virtual {p3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method public checkCast(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1397
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    const/16 v0, 0xc0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->typeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1400
    :cond_0
    return-void
.end method

.method public dup()V
    .locals 2

    .line 641
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 642
    return-void
.end method

.method public dup2()V
    .locals 2

    .line 648
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x5c

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 649
    return-void
.end method

.method public dup2X1()V
    .locals 2

    .line 669
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 670
    return-void
.end method

.method public dup2X2()V
    .locals 2

    .line 676
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x5e

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 677
    return-void
.end method

.method public dupX1()V
    .locals 2

    .line 655
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x5a

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 656
    return-void
.end method

.method public dupX2()V
    .locals 2

    .line 662
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 663
    return-void
.end method

.method public endMethod()V
    .locals 2

    .line 1434
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->access:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 1435
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 1437
    :cond_0
    return-void
.end method

.method public getField(Lorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1209
    const/16 v0, 0xb4

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->fieldInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1210
    return-void
.end method

.method public getLocalType(I)Lorg/checkerframework/org/objectweb/asmx/Type;
    .locals 2
    .param p1, "local"    # I

    .line 538
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->firstLocal:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Type;

    return-object v0
.end method

.method public getStatic(Lorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1185
    const/16 v0, 0xb2

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->fieldInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1186
    return-void
.end method

.method public goTo(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1055
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xa7

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1056
    return-void
.end method

.method public ifCmp(Lorg/checkerframework/org/objectweb/asmx/Type;ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "mode"    # I
    .param p3, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 946
    const/4 v0, -0x1

    .line 947
    .local v0, "intOp":I
    move v1, p2

    .line 948
    .local v1, "jumpMode":I
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 953
    :pswitch_1
    const/16 v1, 0x9d

    goto :goto_0

    .line 950
    :pswitch_2
    const/16 v1, 0x9b

    .line 951
    nop

    .line 956
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 979
    packed-switch p2, :pswitch_data_2

    goto :goto_2

    .line 968
    :pswitch_3
    packed-switch p2, :pswitch_data_3

    .line 976
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad comparison for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 973
    :pswitch_4
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v3, 0xa6

    invoke-interface {v2, v3, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 974
    return-void

    .line 970
    :pswitch_5
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v3, 0xa5

    invoke-interface {v2, v3, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 971
    return-void

    .line 961
    :pswitch_6
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v3, 0x98

    invoke-interface {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 962
    goto :goto_1

    .line 958
    :pswitch_7
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v3, 0x94

    invoke-interface {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 959
    goto :goto_1

    .line 964
    :pswitch_8
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v3, 0x96

    invoke-interface {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 965
    nop

    .line 1002
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v2, v1, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1003
    return-void

    .line 993
    :pswitch_9
    const/16 v0, 0xa4

    .line 994
    goto :goto_2

    .line 996
    :pswitch_a
    const/16 v0, 0xa3

    goto :goto_2

    .line 987
    :pswitch_b
    const/16 v0, 0xa2

    .line 988
    goto :goto_2

    .line 990
    :pswitch_c
    const/16 v0, 0xa1

    .line 991
    goto :goto_2

    .line 984
    :pswitch_d
    const/16 v0, 0xa0

    .line 985
    goto :goto_2

    .line 981
    :pswitch_e
    const/16 v0, 0x9f

    .line 982
    nop

    .line 999
    :goto_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v2, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1000
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9c
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x99
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public ifICmp(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1014
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/Type;->INT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {p0, v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->ifCmp(Lorg/checkerframework/org/objectweb/asmx/Type;ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1015
    return-void
.end method

.method public ifNonNull(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1046
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xc7

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1047
    return-void
.end method

.method public ifNull(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1036
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xc6

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1037
    return-void
.end method

.method public ifZCmp(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1026
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1027
    return-void
.end method

.method public iinc(II)V
    .locals 1
    .param p1, "local"    # I
    .param p2, "amount"    # I

    .line 743
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 744
    return-void
.end method

.method public instanceOf(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1409
    const/16 v0, 0xc1

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->typeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1410
    return-void
.end method

.method public invokeConstructor(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "method"    # Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 1266
    const/16 v0, 0xb7

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->invokeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V

    .line 1267
    return-void
.end method

.method public invokeInterface(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V
    .locals 1
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "method"    # Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 1286
    const/16 v0, 0xb9

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->invokeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V

    .line 1287
    return-void
.end method

.method public invokeStatic(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V
    .locals 1
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "method"    # Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 1276
    const/16 v0, 0xb8

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->invokeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V

    .line 1277
    return-void
.end method

.method public invokeVirtual(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V
    .locals 1
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "method"    # Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 1256
    const/16 v0, 0xb6

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->invokeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V

    .line 1257
    return-void
.end method

.method public loadArg(I)V
    .locals 2
    .param p1, "arg"    # I

    .line 462
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->loadInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V

    .line 463
    return-void
.end method

.method public loadArgArray()V
    .locals 2

    .line 493
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->push(I)V

    .line 494
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->newArray(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dup()V

    .line 497
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->push(I)V

    .line 498
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->loadArg(I)V

    .line 499
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->box(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 500
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->arrayStore(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public loadArgs()V
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->loadArgs(II)V

    .line 486
    return-void
.end method

.method public loadArgs(II)V
    .locals 4
    .param p1, "arg"    # I
    .param p2, "count"    # I

    .line 473
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result v0

    .line 474
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 475
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    add-int v3, p1, v1

    aget-object v2, v2, v3

    .line 476
    .local v2, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    invoke-direct {p0, v2, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->loadInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V

    .line 477
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 474
    .end local v2    # "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public loadLocal(I)V
    .locals 1
    .param p1, "local"    # I

    .line 562
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->getLocalType(I)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->loadInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V

    .line 563
    return-void
.end method

.method public loadLocal(ILorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 0
    .param p1, "local"    # I
    .param p2, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 573
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->setLocalType(ILorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 574
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->loadInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V

    .line 575
    return-void
.end method

.method public loadThis()V
    .locals 3

    .line 450
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->access:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 454
    return-void

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no \'this\' pointer within static method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark()Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 2

    .line 931
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    .line 932
    .local v0, "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 933
    return-object v0
.end method

.method public mark(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 922
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 923
    return-void
.end method

.method public math(ILorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 724
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-virtual {p2, p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getOpcode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 725
    return-void
.end method

.method public monitorEnter()V
    .locals 2

    .line 1416
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xc2

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 1417
    return-void
.end method

.method public monitorExit()V
    .locals 2

    .line 1423
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xc3

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 1424
    return-void
.end method

.method public newArray(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1325
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1351
    const/16 v0, 0xbd

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->typeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1352
    return-void

    .line 1348
    :pswitch_0
    const/4 v0, 0x7

    .line 1349
    .local v0, "typ":I
    goto :goto_0

    .line 1345
    .end local v0    # "typ":I
    :pswitch_1
    const/16 v0, 0xb

    .line 1346
    .restart local v0    # "typ":I
    goto :goto_0

    .line 1342
    .end local v0    # "typ":I
    :pswitch_2
    const/4 v0, 0x6

    .line 1343
    .restart local v0    # "typ":I
    goto :goto_0

    .line 1339
    .end local v0    # "typ":I
    :pswitch_3
    const/16 v0, 0xa

    .line 1340
    .restart local v0    # "typ":I
    goto :goto_0

    .line 1336
    .end local v0    # "typ":I
    :pswitch_4
    const/16 v0, 0x9

    .line 1337
    .restart local v0    # "typ":I
    goto :goto_0

    .line 1333
    .end local v0    # "typ":I
    :pswitch_5
    const/16 v0, 0x8

    .line 1334
    .restart local v0    # "typ":I
    goto :goto_0

    .line 1330
    .end local v0    # "typ":I
    :pswitch_6
    const/4 v0, 0x5

    .line 1331
    .restart local v0    # "typ":I
    goto :goto_0

    .line 1327
    .end local v0    # "typ":I
    :pswitch_7
    const/4 v0, 0x4

    .line 1328
    .restart local v0    # "typ":I
    nop

    .line 1354
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v2, 0xbc

    invoke-interface {v1, v2, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 1355
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public newInstance(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1315
    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->typeInsn(ILorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1316
    return-void
.end method

.method public newLabel()Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 1

    .line 913
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    return-object v0
.end method

.method public newLocal(Lorg/checkerframework/org/objectweb/asmx/Type;)I
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 525
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/LocalVariablesSorter;->newLocal(I)I

    move-result v0

    .line 526
    .local v0, "local":I
    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->setLocalType(ILorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 527
    return v0
.end method

.method public not()V
    .locals 2

    .line 732
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 733
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 734
    return-void
.end method

.method public pop()V
    .locals 2

    .line 627
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 628
    return-void
.end method

.method public pop2()V
    .locals 2

    .line 634
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x58

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 635
    return-void
.end method

.method public push(D)V
    .locals 4
    .param p1, "value"    # D

    .line 371
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 372
    .local v0, "bits":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    .line 373
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    double-to-int v3, p1

    add-int/lit8 v3, v3, 0xe

    invoke-interface {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 377
    :goto_1
    return-void
.end method

.method public push(F)V
    .locals 5
    .param p1, "value"    # F

    .line 357
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 358
    .local v0, "bits":I
    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    .line 359
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    float-to-int v2, p1

    add-int/lit8 v2, v2, 0xb

    invoke-interface {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 363
    :goto_1
    return-void
.end method

.method public push(I)V
    .locals 2
    .param p1, "value"    # I

    .line 327
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    add-int/lit8 v1, p1, 0x3

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 329
    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 330
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 331
    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    .line 332
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x11

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 336
    :goto_0
    return-void
.end method

.method public push(J)V
    .locals 2
    .param p1, "value"    # J

    .line 344
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    .line 345
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    long-to-int v1, p1

    add-int/lit8 v1, v1, 0x9

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 349
    :goto_1
    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 385
    if-nez p1, :cond_0

    .line 386
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 390
    :goto_0
    return-void
.end method

.method public push(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "value"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 398
    if-nez p1, :cond_0

    .line 399
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 403
    :goto_0
    return-void
.end method

.method public push(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 318
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->push(I)V

    .line 319
    return-void
.end method

.method public putField(Lorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1221
    const/16 v0, 0xb5

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->fieldInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1222
    return-void
.end method

.method public putStatic(Lorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "owner"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 1197
    const/16 v0, 0xb3

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->fieldInsn(ILorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1198
    return-void
.end method

.method public ret(I)V
    .locals 2
    .param p1, "local"    # I

    .line 1065
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xa9

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 1066
    return-void
.end method

.method public returnValue()V
    .locals 3

    .line 1148
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->returnType:Lorg/checkerframework/org/objectweb/asmx/Type;

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getOpcode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 1149
    return-void
.end method

.method public storeArg(I)V
    .locals 2
    .param p1, "arg"    # I

    .line 511
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->argumentTypes:[Lorg/checkerframework/org/objectweb/asmx/Type;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->storeInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V

    .line 512
    return-void
.end method

.method public storeLocal(I)V
    .locals 1
    .param p1, "local"    # I

    .line 585
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->getLocalType(I)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->storeInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V

    .line 586
    return-void
.end method

.method public storeLocal(ILorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 0
    .param p1, "local"    # I
    .param p2, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 597
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->setLocalType(ILorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 598
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->storeInsn(Lorg/checkerframework/org/objectweb/asmx/Type;I)V

    .line 599
    return-void
.end method

.method public swap()V
    .locals 2

    .line 683
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 684
    return-void
.end method

.method public swap(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 2
    .param p1, "prev"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 693
    invoke-virtual {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 694
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->swap()V

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dupX2()V

    .line 698
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->pop()V

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 702
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dup2X1()V

    .line 703
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->pop2()V

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dup2X2()V

    .line 706
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->pop2()V

    .line 709
    :goto_0
    return-void
.end method

.method public tableSwitch([ILorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;)V
    .locals 5
    .param p1, "keys"    # [I
    .param p2, "generator"    # Lorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;

    .line 1079
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1080
    const/4 v0, 0x0

    .local v0, "density":F
    goto :goto_0

    .line 1082
    .end local v0    # "density":F
    :cond_0
    array-length v0, p1

    int-to-float v0, v0

    array-length v3, p1

    sub-int/2addr v3, v2

    aget v3, p1, v3

    aget v4, p1, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1085
    .restart local v0    # "density":F
    :goto_0
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->tableSwitch([ILorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;Z)V

    .line 1086
    return-void
.end method

.method public tableSwitch([ILorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;Z)V
    .locals 10
    .param p1, "keys"    # [I
    .param p2, "generator"    # Lorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;
    .param p3, "useTable"    # Z

    .line 1101
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1102
    aget v1, p1, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    if-lt v1, v2, :cond_0

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keys must be sorted ascending"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->newLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v0

    .line 1107
    .local v0, "def":Lorg/checkerframework/org/objectweb/asmx/Label;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->newLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v1

    .line 1108
    .local v1, "end":Lorg/checkerframework/org/objectweb/asmx/Label;
    array-length v2, p1

    if-lez v2, :cond_7

    .line 1109
    array-length v2, p1

    .line 1110
    .local v2, "len":I
    const/4 v3, 0x0

    aget v3, p1, v3

    .line 1111
    .local v3, "min":I
    add-int/lit8 v4, v2, -0x1

    aget v4, p1, v4

    .line 1112
    .local v4, "max":I
    sub-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    .line 1113
    .local v5, "range":I
    if-eqz p3, :cond_5

    .line 1114
    new-array v6, v5, [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1115
    .local v6, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    invoke-static {v6, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1116
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_2

    .line 1117
    aget v8, p1, v7

    sub-int/2addr v8, v3

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->newLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v9

    aput-object v9, v6, v8

    .line 1116
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1119
    .end local v7    # "i":I
    :cond_2
    iget-object v7, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v7, v3, v4, v0, v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1120
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v5, :cond_4

    .line 1121
    aget-object v8, v6, v7

    .line 1122
    .local v8, "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-eq v8, v0, :cond_3

    .line 1123
    invoke-virtual {p0, v8}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mark(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1124
    add-int v9, v7, v3

    invoke-interface {p2, v9, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;->generateCase(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1120
    .end local v8    # "label":Lorg/checkerframework/org/objectweb/asmx/Label;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1127
    .end local v6    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v7    # "i":I
    :cond_4
    goto :goto_5

    .line 1128
    :cond_5
    new-array v6, v2, [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1129
    .restart local v6    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v2, :cond_6

    .line 1130
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->newLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1129
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1132
    .end local v7    # "i":I
    :cond_6
    iget-object v7, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v7, v0, p1, v6}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1133
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v2, :cond_7

    .line 1134
    aget-object v8, v6, v7

    invoke-virtual {p0, v8}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mark(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1135
    aget v8, p1, v7

    invoke-interface {p2, v8, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;->generateCase(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1133
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1139
    .end local v2    # "len":I
    .end local v3    # "min":I
    .end local v4    # "max":I
    .end local v5    # "range":I
    .end local v6    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v7    # "i":I
    :cond_7
    :goto_5
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mark(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1140
    invoke-interface {p2}, Lorg/checkerframework/org/objectweb/asmx/commons/TableSwitchGenerator;->generateDefault()V

    .line 1141
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mark(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1142
    return-void
.end method

.method public throwException()V
    .locals 2

    .line 1372
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    const/16 v1, 0xbf

    invoke-interface {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 1373
    return-void
.end method

.method public throwException(Lorg/checkerframework/org/objectweb/asmx/Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1383
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->newInstance(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 1384
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->dup()V

    .line 1385
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    .line 1386
    const-string v0, "void <init> (String)"

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->invokeConstructor(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V

    .line 1387
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->throwException()V

    .line 1388
    return-void
.end method

.method public unbox(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 868
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->NUMBER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 869
    .local v0, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    const/4 v1, 0x0

    .line 870
    .local v1, "sig":Lorg/checkerframework/org/objectweb/asmx/commons/Method;
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 882
    :pswitch_0
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 883
    goto :goto_0

    .line 888
    :pswitch_1
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 889
    goto :goto_0

    .line 885
    :pswitch_2
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 886
    goto :goto_0

    .line 893
    :pswitch_3
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    goto :goto_0

    .line 874
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->CHARACTER_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 875
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->CHAR_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 876
    goto :goto_0

    .line 878
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 879
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->BOOLEAN_VALUE:Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 880
    goto :goto_0

    .line 872
    :pswitch_6
    return-void

    .line 895
    :goto_0
    if-nez v1, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->checkCast(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    goto :goto_1

    .line 898
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->checkCast(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    .line 899
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->invokeVirtual(Lorg/checkerframework/org/objectweb/asmx/Type;Lorg/checkerframework/org/objectweb/asmx/commons/Method;)V

    .line 901
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
