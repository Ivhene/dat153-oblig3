.class public final enum Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;",
        "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4985
    new-instance v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    .line 4980
    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4980
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4980
    const-class v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;
    .locals 1

    .line 4980
    sget-object v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    return-object v0
.end method


# virtual methods
.method public bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 0
    .param p1, "adviceMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 4991
    return-object p0
.end method

.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 0
    .param p1, "adviceMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 4998
    return-object p0
.end method

.method public compoundLocalVariableLength(I)I
    .locals 1
    .param p1, "localVariableLength"    # I

    .line 5012
    const/16 v0, 0x7fff

    return v0
.end method

.method public compoundStackSize(I)I
    .locals 1
    .param p1, "stackSize"    # I

    .line 5005
    const/16 v0, 0x7fff

    return v0
.end method

.method public recordMaxima(II)V
    .locals 0
    .param p1, "stackSize"    # I
    .param p2, "localVariableLength"    # I

    .line 5048
    return-void
.end method

.method public requireLocalVariableLength(I)V
    .locals 0
    .param p1, "localVariableLength"    # I

    .line 5027
    return-void
.end method

.method public requireLocalVariableLengthPadding(I)V
    .locals 0
    .param p1, "localVariableLengthPadding"    # I

    .line 5041
    return-void
.end method

.method public requireStackSize(I)V
    .locals 0
    .param p1, "stackSize"    # I

    .line 5020
    return-void
.end method

.method public requireStackSizePadding(I)V
    .locals 0
    .param p1, "stackSizePadding"    # I

    .line 5034
    return-void
.end method
