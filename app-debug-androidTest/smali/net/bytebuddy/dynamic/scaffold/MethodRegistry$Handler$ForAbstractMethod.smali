.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;
.super Ljava/lang/Enum;
.source "MethodRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForAbstractMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    .line 104
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 104
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;
    .locals 1

    .line 104
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    return-object v0
.end method


# virtual methods
.method public assemble(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 1
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "attributeAppender"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .param p3, "visibility"    # Lnet/bytebuddy/description/modifier/Visibility;

    .line 129
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithoutBody;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithoutBody;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)V

    return-object v0
.end method

.method public compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;
    .locals 0
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 122
    return-object p0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 115
    return-object p1
.end method
