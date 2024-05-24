.class public final enum Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;
.super Ljava/lang/Enum;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObserverRegistrationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

.field public static final enum JUST_THIS_NODE:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

.field public static final enum SELF_PROPAGATING:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

.field public static final enum THIS_NODE_AND_EXISTING_DESCENDANTS:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 112
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    const-string v1, "JUST_THIS_NODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->JUST_THIS_NODE:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    .line 117
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    const-string v2, "THIS_NODE_AND_EXISTING_DESCENDANTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->THIS_NODE_AND_EXISTING_DESCENDANTS:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    .line 123
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    const-string v3, "SELF_PROPAGATING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->SELF_PROPAGATING:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    .line 107
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 107
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;
    .locals 1

    .line 107
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    return-object v0
.end method
