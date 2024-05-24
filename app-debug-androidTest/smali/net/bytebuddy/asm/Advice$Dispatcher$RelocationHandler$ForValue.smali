.class public abstract enum Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ForValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

.field public static final enum DOUBLE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

.field public static final enum FLOAT:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

.field public static final enum INTEGER:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

.field public static final enum LONG:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

.field public static final enum REFERENCE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;


# instance fields
.field private final defaultJump:I

.field private final load:I

.field private final nonDefaultJump:I

.field private final requiredSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 7007
    new-instance v7, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$1;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    const/16 v3, 0x15

    const/16 v4, 0x9a

    const/16 v5, 0x99

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$1;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->INTEGER:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7017
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$2;

    const-string v9, "LONG"

    const/4 v10, 0x1

    const/16 v11, 0x16

    const/16 v12, 0x9a

    const/16 v13, 0x99

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$2;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->LONG:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7027
    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$3;

    const-string v16, "FLOAT"

    const/16 v17, 0x2

    const/16 v18, 0x17

    const/16 v19, 0x9a

    const/16 v20, 0x99

    const/16 v21, 0x2

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$3;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->FLOAT:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7038
    new-instance v2, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$4;

    const-string v9, "DOUBLE"

    const/4 v10, 0x3

    const/16 v11, 0x18

    const/4 v14, 0x4

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$4;-><init>(Ljava/lang/String;IIIII)V

    sput-object v2, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->DOUBLE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7049
    new-instance v3, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$5;

    const-string v16, "REFERENCE"

    const/16 v17, 0x4

    const/16 v18, 0x19

    const/16 v19, 0xc7

    const/16 v20, 0xc6

    const/16 v21, 0x0

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$5;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->REFERENCE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7002
    const/4 v4, 0x5

    new-array v4, v4, [Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p3, "load"    # I
    .param p4, "defaultJump"    # I
    .param p5, "nonDefaultJump"    # I
    .param p6, "requiredSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 7084
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7085
    iput p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->load:I

    .line 7086
    iput p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->defaultJump:I

    .line 7087
    iput p5, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->nonDefaultJump:I

    .line 7088
    iput p6, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->requiredSize:I

    .line 7089
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILnet/bytebuddy/asm/Advice$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lnet/bytebuddy/asm/Advice$1;

    .line 7002
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method

.method static synthetic access$1200(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7002
    iget v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->load:I

    return v0
.end method

.method static synthetic access$1300(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7002
    iget v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->nonDefaultJump:I

    return v0
.end method

.method static synthetic access$1400(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7002
    iget v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->defaultJump:I

    return v0
.end method

.method static synthetic access$1500(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7002
    iget v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->requiredSize:I

    return v0
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDefinition;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;
    .locals 2
    .param p0, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .param p1, "inverted"    # Z

    .line 7100
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7101
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->LONG:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .local v0, "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    goto :goto_0

    .line 7102
    .end local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7103
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->FLOAT:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .restart local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    goto :goto_0

    .line 7104
    .end local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7105
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->DOUBLE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .restart local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    goto :goto_0

    .line 7106
    .end local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7108
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7109
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->INTEGER:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .restart local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    goto :goto_0

    .line 7111
    .end local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    :cond_3
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->REFERENCE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 7113
    .restart local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    :goto_0
    if-eqz p1, :cond_4

    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Inverted;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1

    .line 7107
    .end local v0    # "skipDispatcher":Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot skip on default value for void return type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7002
    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
    .locals 1

    .line 7002
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    return-object v0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;
    .locals 2
    .param p1, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "relocation"    # Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    .line 7129
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;Z)V

    return-object v0
.end method

.method protected abstract convertValue(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method
