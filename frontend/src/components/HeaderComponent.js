import React, { Component } from 'react'
import 'bootstrap/dist/css/bootstrap.min.css';
class HeaderComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {

        }
    }

    render() {
        return (
            <div>
                <header>
                    <nav className="navbar bg">
                        <div>
                            <tr>
                                <td><a href="/reports" className="navbar-edo"><i class="fa-solid fa-house"></i></a></td>
                                <td><a href="/add-report/_add" className="navbar-eda"><i class="fa-solid fa-plus"></i></a></td>
                                <td className="navbar-edi"> Dinamik Financial Records </td>
                            </tr>
                        </div>
                    </nav>
                </header>
            </div>
        )
    }
}

export default HeaderComponent
