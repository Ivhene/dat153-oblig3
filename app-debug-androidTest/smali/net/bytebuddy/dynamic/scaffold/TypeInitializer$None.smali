.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;
.super Ljava/lang/Enum;
.source "TypeInitializer.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "None"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 125
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    .line 120
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 120
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;
    .locals 1

    .line 120
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 152
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->ZERO:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    return-object v0
.end method

.method public expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 1
    .param p1, "byteCodeAppenderFactory"    # Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 138
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;-><init>(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    return-object v0
.end method

.method public isDefined()Z
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 0
    .param p1, "record"    # Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    .line 145
    return-object p1
.end method
