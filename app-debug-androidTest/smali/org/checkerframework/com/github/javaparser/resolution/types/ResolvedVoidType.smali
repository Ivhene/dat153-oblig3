.class public Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;
.super Ljava/lang/Object;
.source "ResolvedVoidType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# static fields
.field public static final INSTANCE:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedVoidType;->INSTANCE:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "void"

    return-object v0
.end method

.method public isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isVoid()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method
