.class public final enum Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;
.super Ljava/lang/Enum;
.source "TypeVariableSource.java"

# interfaces
.implements Lnet/bytebuddy/description/TypeVariableSource$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/TypeVariableSource$Visitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;",
        ">;",
        "Lnet/bytebuddy/description/TypeVariableSource$Visitor<",
        "Lnet/bytebuddy/description/TypeVariableSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;->INSTANCE:Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    .line 109
    filled-new-array {v0}, [Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;->$VALUES:[Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    const-class v0, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;
    .locals 1

    .line 109
    sget-object v0, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;->$VALUES:[Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;->onMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/TypeVariableSource;

    move-result-object p1

    return-object p1
.end method

.method public onMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/TypeVariableSource;
    .locals 0
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 127
    return-object p1
.end method

.method public bridge synthetic onType(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/TypeVariableSource$Visitor$NoOp;->onType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/TypeVariableSource;

    move-result-object p1

    return-object p1
.end method

.method public onType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/TypeVariableSource;
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 120
    return-object p1
.end method
