.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;
.super Ljava/lang/Object;
.source "PropertyChange.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;


# instance fields
.field private final newValue:Ljava/lang/Object;

.field private final oldValue:Ljava/lang/Object;

.field private final property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 28
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->oldValue:Ljava/lang/Object;

    .line 29
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->newValue:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public getNewValue()Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "node"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    if-ne p1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/PropertyChange;->newValue:Ljava/lang/Object;

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getRawValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
