.class public final enum Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;
.super Ljava/lang/Enum;
.source "FieldLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/FieldLocator;
.implements Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/FieldLocator;",
        "Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    .line 147
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;
    .locals 1

    .line 147
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;

    return-object v0
.end method


# virtual methods
.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    return-object v0
.end method

.method public locate(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 172
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator;
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 158
    return-object p0
.end method
