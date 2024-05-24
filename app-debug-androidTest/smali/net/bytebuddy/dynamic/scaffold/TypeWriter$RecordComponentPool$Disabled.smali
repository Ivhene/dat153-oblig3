.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;
.super Ljava/lang/Enum;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1712
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    .line 1707
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1707
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1707
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;
    .locals 1

    .line 1707
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Disabled;

    return-object v0
.end method


# virtual methods
.method public target(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;
    .locals 2
    .param p1, "recordComponentDescription"    # Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 1718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot look up record component from disabled pool"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
