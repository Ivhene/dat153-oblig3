.class abstract enum Lorg/checkerframework/com/google/common/io/Files$FilePredicate;
.super Ljava/lang/Enum;
.source "Files.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "FilePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/io/Files$FilePredicate;",
        ">;",
        "Lorg/checkerframework/com/google/common/base/Predicate<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

.field public static final enum IS_DIRECTORY:Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

.field public static final enum IS_FILE:Lorg/checkerframework/com/google/common/io/Files$FilePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 913
    new-instance v0, Lorg/checkerframework/com/google/common/io/Files$FilePredicate$1;

    const-string v1, "IS_DIRECTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/io/Files$FilePredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    .line 925
    new-instance v1, Lorg/checkerframework/com/google/common/io/Files$FilePredicate$2;

    const-string v3, "IS_FILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/io/Files$FilePredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/io/Files$FilePredicate;->IS_FILE:Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    .line 912
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/checkerframework/com/google/common/io/Files$FilePredicate;->$VALUES:[Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 912
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/io/Files$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/io/Files$1;

    .line 912
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/io/Files$FilePredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/io/Files$FilePredicate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 912
    const-class v0, Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/io/Files$FilePredicate;
    .locals 1

    .line 912
    sget-object v0, Lorg/checkerframework/com/google/common/io/Files$FilePredicate;->$VALUES:[Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/io/Files$FilePredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/io/Files$FilePredicate;

    return-object v0
.end method
