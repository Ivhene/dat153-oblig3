.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;
.super Ljava/lang/Enum;
.source "MethodGraph.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    .line 57
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;
    .locals 1

    .line 57
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    return-object v0
.end method


# virtual methods
.method public compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0
    .param p1, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .param p2, "viewPoint"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 103
    return-object p0
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 96
    return-object p0
.end method

.method public getInterfaceGraph(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 89
    return-object p0
.end method

.method public getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 0

    .line 82
    return-object p0
.end method

.method public listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;
    .locals 2

    .line 75
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    .locals 1
    .param p1, "token"    # Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    .line 68
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    return-object v0
.end method
