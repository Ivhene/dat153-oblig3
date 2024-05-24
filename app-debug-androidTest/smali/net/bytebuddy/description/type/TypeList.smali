.class public interface abstract Lnet/bytebuddy/description/type/TypeList;
.super Ljava/lang/Object;
.source "TypeList.java"

# interfaces
.implements Lnet/bytebuddy/matcher/FilterableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeList$Generic;,
        Lnet/bytebuddy/description/type/TypeList$Empty;,
        Lnet/bytebuddy/description/type/TypeList$Explicit;,
        Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;,
        Lnet/bytebuddy/description/type/TypeList$AbstractBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        "Lnet/bytebuddy/description/type/TypeList;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_INTERFACES:[Ljava/lang/String;

.field public static final UNDEFINED:Lnet/bytebuddy/description/type/TypeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/description/type/TypeList;->UNDEFINED:Lnet/bytebuddy/description/type/TypeList;

    .line 54
    sput-object v0, Lnet/bytebuddy/description/type/TypeList;->NO_INTERFACES:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getStackSize()I
.end method

.method public abstract toInternalNames()[Ljava/lang/String;
.end method
