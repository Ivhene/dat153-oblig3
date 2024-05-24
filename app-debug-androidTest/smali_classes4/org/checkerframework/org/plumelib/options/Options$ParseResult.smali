.class Lorg/checkerframework/org/plumelib/options/Options$ParseResult;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/options/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseResult"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field shortName:Ljava/lang/String;

.field typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shortName"    # Ljava/lang/String;
    .param p2, "typeName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;->shortName:Ljava/lang/String;

    .line 1609
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;->typeName:Ljava/lang/String;

    .line 1610
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;->description:Ljava/lang/String;

    .line 1611
    return-void
.end method
