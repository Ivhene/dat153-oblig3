.class public final enum Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$FieldSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Appender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3459
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    .line 3454
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3454
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3454
    const-class v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;
    .locals 1

    .line 3454
    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 3
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 3465
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3468
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->VOID:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v0

    .line 3466
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instrumented method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not return void for field setting method call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
