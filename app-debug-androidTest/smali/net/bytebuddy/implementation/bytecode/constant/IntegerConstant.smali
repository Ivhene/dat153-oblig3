.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
.super Ljava/lang/Enum;
.source "IntegerConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;,
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;,
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;


# instance fields
.field private final opcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 36
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v1, "MINUS_ONE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 41
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v2, "ZERO"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v1, v2, v4, v5}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 46
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v4, "ONE"

    const/4 v6, 0x4

    invoke-direct {v2, v4, v3, v6}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 51
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v4, "TWO"

    const/4 v7, 0x5

    invoke-direct {v3, v4, v5, v7}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 56
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v5, "THREE"

    const/4 v8, 0x6

    invoke-direct {v4, v5, v6, v8}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 61
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v6, "FOUR"

    const/4 v9, 0x7

    invoke-direct {v5, v6, v7, v9}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 66
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v7, "FIVE"

    const/16 v9, 0x8

    invoke-direct {v6, v7, v8, v9}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 31
    filled-new-array/range {v0 .. v6}, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    .line 71
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->opcode:I

    .line 85
    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 31
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2
    .param p0, "value"    # I

    .line 106
    packed-switch p0, :pswitch_data_0

    .line 122
    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 123
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;

    int-to-byte v1, p0

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;-><init>(B)V

    return-object v0

    .line 120
    :pswitch_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0

    .line 118
    :pswitch_1
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0

    .line 116
    :pswitch_2
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0

    .line 114
    :pswitch_3
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0

    .line 112
    :pswitch_4
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0

    .line 110
    :pswitch_5
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0

    .line 108
    :pswitch_6
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0

    .line 124
    :cond_0
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    .line 125
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;

    int-to-short v1, p0

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;-><init>(S)V

    return-object v0

    .line 127
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1
    .param p0, "value"    # Z

    .line 94
    if-eqz p0, :cond_0

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
    .locals 1

    .line 31
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 143
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->opcode:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 144
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method
