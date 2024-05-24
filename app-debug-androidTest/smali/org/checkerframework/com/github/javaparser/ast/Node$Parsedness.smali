.class public final enum Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;
.super Ljava/lang/Enum;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Parsedness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

.field public static final enum PARSED:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

.field public static final enum UNPARSABLE:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 128
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    const-string v1, "PARSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->PARSED:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    const-string v2, "UNPARSABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->UNPARSABLE:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    .line 126
    filled-new-array {v0, v1}, [Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

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

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;
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

    .line 126
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;
    .locals 1

    .line 126
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    return-object v0
.end method
